class Admin::ProductAttribute < ActiveRecord::Base
  #default_scope{order('num_view DESK')}
  validates :product_id, :name_attribute, presence: true
  validates_uniqueness_of :product_id, :scope =>  [:name_attribute]
end
