class NormalizationsController < ApplicationController

  def index
    @products = Admin::Product.all
  end

  def show
    @category = Admin::ProductCategory.find(params[:id])
    @products = Admin::Product.where(product_category_id: @category ).pluck(:id, :product_name)
  end
end
