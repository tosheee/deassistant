class ProductDescription < ActiveRecord::Base
  validates :product_id, :attr_p1, :attr_p2, :attr_p3, presence: true
has_one :admin_product, :class_name => 'Admin::Product'
end
