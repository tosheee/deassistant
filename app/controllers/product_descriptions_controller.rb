class ProductDescriptionsController < ApplicationController
  #before_action :set_admin_feature_brand_attribute, only: [:new, :show, :edit, :update, :destroy]


  def list
     @products = Admin::Product.find(params[:id])
     @features_brands = Admin::FeaturesBrand.where(product_id: params[:id])
     @product_attributes = Admin::ProductAttribute.where(product_id: params[:id]).order("num_view ASC")
  end

  def show
    @features_brands = Admin::FeaturesBrand.where(product_id: params[:id])
    @features_brand_attributes = Admin::FeatureBrandAttribute.where(features_brands_id: params[:id])
  end

  def new
    @product_id = params[:product_id]
    @brand_id  = params[:brand_id]
    @name_brand = params[:name_brand]
    @admin_feature_brand_attribute = Admin::FeatureBrandAttribute.new
  end

  def create
    @admin_feature_brand_attribute = Admin::FeatureBrandAttribute.new(admin_feature_brand_attribute_params)
    if @admin_feature_brand_attribute.save
      render :show
    else
      render :new
    end
  end

  private
  def set_admin_feature_brand_attribute
    @admin_feature_brand_attribute = Admin::FeatureBrandAttribute.find(params[:id])
  end

  def admin_feature_brand_attribute_params
    params.require(:admin_feature_brand_attribute).permit(:product_id, :features_brands_id, :seria, :seria_description, :model, :aliases, :model_description, :ean, :pn, :example)
  end
end
