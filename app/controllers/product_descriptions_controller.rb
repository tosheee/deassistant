class ProductDescriptionsController < ApplicationController

  def list
       @products = Admin::Product.find(params[:id])

       @product_attributes = Admin::ProductAttribute.where(product_id: params[:id])

        #render text: @product_attributes.each {|attr|  attr.name_attribute.inspect }


    #render text: "#{@products.id} #{@products.product_name}"
    #@product = Admin::Product.where(id: params[:id]).pluck(:id, :product_name)
     #@product_attributes = Admin::ProductAttribute.all
     #@product_attributes = Admin::ProductAttribute.where(product_id: params[:id])
     #@product_attributes = Admin::ProductAttribute.where(product_id: params[:id]).pluck(:id, :name_attribute, :attribute_description)
  end
end
