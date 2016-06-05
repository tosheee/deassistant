class ProductDescription < ActiveRecord::Base
has_one :admin_product, :class_name => 'Admin::Product'
end
