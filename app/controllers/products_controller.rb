class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  skip_authorize_resource :only => [:index, :show]

  # GET /products
  # GET /products.json
  def index
    search_terms = get_search_terms
    # If search_terms[0] exists, user searched by name, so return products by name, otherwise, search by other criteria:
    @products = search_terms[0] ? Product.search_by_name(search_terms[0]) : get_products(search_terms)

    if @products.length == 0
      @title = "No matches for \"#{params[:q]}\""
    else
      @title = get_title
    end

  end

  # GET /products/1
  # GET /products/1.json
  def show
    # @comments = @product.comments.order("created_at DESC")
    @comments = @product.comments.order("created_at DESC").paginate(:page => params[:page], :per_page => 2)
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.image_url = 'gmcha.jpg' #image_url disabled for demonstration purposes (also changed in _form.html.erb)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:name, :description, :image_url, :colour, :price_in_pennies, :country)
  end


  # Product search based on non-name criteria
  def get_products(search_terms)
    if search_terms.any?
      # User did not search by name so remove first value from search_terms array
      search_terms.shift
      Product.search(search_terms[0],search_terms[1])
    else
      # If no search criteria, return all products
      Product.all
    end
  end

  # Get the title for the type of search
  def get_title
    if params[:q] == ""
      "No search criteria entered. Here's everything!"
    elsif params[:q]
      "Products matching a search for \"#{params[:q]}\""
    elsif params[:tea_color]
      "All #{params[:tea_color].capitalize} Teas"
    elsif params[:country]
      "All Teas From #{params[:country]}"
    else
      "All Products"
    end
  end

  def get_search_terms
    [].push(params[:q])
    .push(params[:tea_color])
    .push(params[:country])
  end

end
