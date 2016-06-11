class Admin::ProductAttributesController < ApplicationController
  before_action :set_admin_product_attribute, only: [:show, :edit, :update, :destroy]

  # GET /admin/product_attributes
  # GET /admin/product_attributes.json
  def index
    @admin_product_attributes = Admin::ProductAttribute.all
  end

  # GET /admin/product_attributes/1
  # GET /admin/product_attributes/1.json
  def show
  end

  # GET /admin/product_attributes/new
  def new
    @admin_product_attribute = Admin::ProductAttribute.new
  end

  # GET /admin/product_attributes/1/edit
  def edit
  end

  # POST /admin/product_attributes
  # POST /admin/product_attributes.json
  def create
    @admin_product_attribute = Admin::ProductAttribute.new(admin_product_attribute_params)

    respond_to do |format|
      if @admin_product_attribute.save
        format.html { redirect_to @admin_product_attribute, notice: 'Product attribute was successfully created.' }
        format.json { render :show, status: :created, location: @admin_product_attribute }
      else
        format.html { render :new }
        format.json { render json: @admin_product_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/product_attributes/1
  # PATCH/PUT /admin/product_attributes/1.json
  def update
    respond_to do |format|
      if @admin_product_attribute.update(admin_product_attribute_params)
        format.html { redirect_to @admin_product_attribute, notice: 'Product attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_product_attribute }
      else
        format.html { render :edit }
        format.json { render json: @admin_product_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/product_attributes/1
  # DELETE /admin/product_attributes/1.json
  def destroy
    @admin_product_attribute.destroy
    respond_to do |format|
      format.html { redirect_to admin_product_attributes_url, notice: 'Product attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_product_attribute
      @admin_product_attribute = Admin::ProductAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_product_attribute_params
      params.require(:admin_product_attribute).permit(:product_id, :num_view, :name_attribute, :attribute_description)
    end
end
