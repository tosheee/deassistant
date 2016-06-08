class Admin::ProductAttribute < ActiveRecord::Base
  validates :product_id, :name_attribute, presence: true
  validates_uniqueness_of :product_id, :scope =>  [:name_attribute]
end
