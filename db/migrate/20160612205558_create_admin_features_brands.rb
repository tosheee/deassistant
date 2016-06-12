class CreateAdminFeaturesBrands < ActiveRecord::Migration
  def change
    create_table :admin_features_brands do |t|
      t.integer :product_id
      t.string :brand
      t.text :description

      t.timestamps null: false
    end
  end
end
