class Admin::ProductCategory < ActiveRecord::Base
  belongs_to :admin_product, :class_name => 'Admin::Product'
end
