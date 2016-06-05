class ProductDescriptionsController < ApplicationController
  before_action :set_product_description, only: [:edit, :update, :destroy]

  # GET /product_descriptions
  # GET /product_descriptions.json
  def index
    @product_descriptions = ProductDescription.all
  end

  # GET /product_descriptions/1
  # GET /product_descriptions/1.json
  def show
    @product = Admin::Product.find(params[:id])
    @name_product = Admin::Product.where(id: @product).pluck(:product_name)

    @product_description = ProductDescription.find(params[:id])
  end

  # GET /product_descriptions/new
  def new
    @product_description = ProductDescription.new
  end

  # GET /product_descriptions/1/edit
  def edit
  end

  # POST /product_descriptions
  # POST /product_descriptions.json
  def create
    @product_description = ProductDescription.new(product_description_params)

    respond_to do |format|
      if @product_description.save
        format.html { redirect_to @product_description, notice: 'Product description was successfully created.' }
        format.json { render :show, status: :created, location: @product_description }
      else
        format.html { render :new }
        format.json { render json: @product_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_descriptions/1
  # PATCH/PUT /product_descriptions/1.json
  def update
    respond_to do |format|
      if @product_description.update(product_description_params)
        format.html { redirect_to @product_description, notice: 'Product description was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_description }
      else
        format.html { render :edit }
        format.json { render json: @product_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_descriptions/1
  # DELETE /product_descriptions/1.json
  def destroy
    @product_description.destroy
    respond_to do |format|
      format.html { redirect_to product_descriptions_url, notice: 'Product description was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_description
      @product_description = ProductDescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_description_params
      params.require(:product_description).permit(:product_id, :product_description, :attr_p1, :attr_descript_p1, :attr_p2, :attr_descript_p2, :attr_p3, :attr_descript_p3, :attr_p4, :attr_descript_p4, :attr_p5, :attr_descript_p5, :attr_p6, :attr_descript_p6, :attr_p7, :attr_descript_p7, :attr_p8, :attr_descript_p8, :attr_p9, :attr_descript_p9, :attr_p10, :attr_descript_p10, :attr_p11, :attr_descript_p11, :attr_p12, :attr_descript_p12, :attr_p13, :attr_descript_p13, :attr_p14, :attr_descript_p14, :attr_p15, :attr_descript_p15, :attr_p16, :attr_descript_p16, :attr_p17, :attr_descript_p17, :attr_p18, :attr_descript_p18, :attr_p19, :attr_descript_p19, :attr_p20, :attr_descript_p20)
    end
end
