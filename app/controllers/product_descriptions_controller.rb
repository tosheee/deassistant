class ProductDescriptionsController < ApplicationController

  def list
     @products = Admin::Product.find(params[:id])
     @features_brands = Admin::FeaturesBrand.where(product_id: params[:id])
     @product_attributes = Admin::ProductAttribute.where(product_id: params[:id]).order("num_view ASC")

  end
end
