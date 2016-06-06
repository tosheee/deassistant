class Admin::Product < ActiveRecord::Base
 validates :product_category_id, :product_name, presence: true
 validates :product_name, uniqueness: true
has_one :admin_product_category, :class_name => 'Admin::ProductCategory'
belongs_to :product_description
end
