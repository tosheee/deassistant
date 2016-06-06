class Admin::ProductCategory < ActiveRecord::Base
  validates :name_category, presence: true
  validates :name_category, uniqueness: true
  belongs_to :admin_product, :class_name => 'Admin::Product'
end
