class AddNumViewComlunToProductDescription < ActiveRecord::Migration
  def change
    add_column :admin_product_attributes, :num_view, :integer
  end
end
