class Admin::Product < ActiveRecord::Base
has_one :admin_product_category, :class_name => 'Admin::ProductCategory'
belongs_to :product_description
end
