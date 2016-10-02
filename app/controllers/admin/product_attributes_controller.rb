class Admin::ProductAttributesController < ApplicationController
  before_action :set_admin_product_attribute, only: [:edit, :update, :destroy]

  def list
    @products = Admin::Product.find(params[:id])
    @admin_product_attributes = Admin::ProductAttribute.where(product_id: params[:id]).order("num_view ASC")
  end

  def index
    @admin_product_attributes = Admin::ProductAttribute.all
  end

   # def show
   #end

  def new
    @admin_product_attribute = Admin::ProductAttribute.new
  end

  def edit
  end

  def create
    @admin_product_attribute = Admin::ProductAttribute.new(admin_product_attribute_params)
      if @admin_product_attribute.save
        redirect_to :back
      else
        render action: :new
    end
  end

  def update
      if @admin_product_attribute.update(admin_product_attribute_params)
        #render text: admin_product_attribute_params.inspect
        @product_id = admin_product_attribute_params[:product_id]
        #render '/'
        redirect_to  "/product_descriptions/#{@product_id}"
      else
      render action: :edit
      end
  end

  def destroy
    @admin_product_attribute.destroy
    redirect_to action: :index
  end

  private
    def set_admin_product_attribute
      @admin_product_attribute = Admin::ProductAttribute.find(params[:id])
    end

    def admin_product_attribute_params
      params.require(:admin_product_attribute).permit(:product_id, :num_view, :name_attribute, :attribute_description)
    end
end
