class PaymentsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        amount: @product.price_in_pennies, # amount in cents, again
        currency: "usd",
        source: token,
        description: params[:stripeEmail]
      )
    rescue Stripe::CardError => e
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortuntaely, there was an error processing the payment: #{err[:message]}"
    end

    UserMailer.payment_processed(@product.price_in_pennies, @product.name, @user.email).deliver_now

    redirect_to product_path(@product)

  end

end
