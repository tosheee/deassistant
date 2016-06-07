class CreateAdminProductAttributes < ActiveRecord::Migration
  def change
    create_table :admin_product_attributes do |t|
      t.integer :product_id
      t.string :name_attribute
      t.text :attribute_description

      t.timestamps null: false
    end
  end
end
