class ProductDescriptionsController < ApplicationController

  def list
     @products = Admin::Product.find(params[:id])
     @features_brands = Admin::FeaturesBrand.where(product_id: params[:id])
     @product_attributes = Admin::ProductAttribute.where(product_id: params[:id]).order("num_view ASC")
  end

  def show
    #@products = Admin::Product.find(params[:id])
    @features_brands = Admin::FeaturesBrand.where(product_id: params[:id])
    @features_brand_attributes = Admin::FeatureBrandAttribute.where(features_brands_id: params[:id])
  end
end
