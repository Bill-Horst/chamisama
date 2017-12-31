class PaymentsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        amount: @product.price_in_pennies, # amount in cents, again
        currency: 'usd',
        source: token,
        description: params[:stripeEmail]
      )

      if charge.paid
        @order = Order.new(product_id: @product.id, user_id: @user.id, total: @product.price_in_pennies)
        UserMailer.payment_processed(@product.price_in_pennies, @product.name, @user.email).deliver_now

        respond_to do |format|
          if @order.save
            format.html { redirect_to @order, notice: 'Thanks! Your order was received. It will arrive shortly.' }
            format.json { render :show, status: :created, location: @order }
          else
            format.html { render :new }
            format.json { render json: @order.errors, status: :unprocessable_entity }
          end
        end
      end
    rescue Stripe::CardError => e
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortuntaely, there was an error processing the payment: #{err[:message]}"
    end
  end
end
