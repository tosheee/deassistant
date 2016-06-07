class ProductDescriptionsController < ApplicationController

  def list
     @product = Admin::Product.where(id: params[:id]).pluck(:id, :product_name)
     @product_attributes = Admin::ProductAttribute.where(product_id: params[:id]).pluck(:id, :name_attribute, :attribute_description)
  end
end
