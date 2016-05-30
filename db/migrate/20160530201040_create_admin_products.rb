class CreateAdminProducts < ActiveRecord::Migration
  def change
    create_table :admin_products do |t|
      t.integer :product_category_id
      t.string :product_name

      t.timestamps null: false
    end
  end
end
