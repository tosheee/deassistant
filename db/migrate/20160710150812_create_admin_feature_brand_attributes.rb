class CreateAdminFeatureBrandAttributes < ActiveRecord::Migration
  def change
    create_table :admin_feature_brand_attributes do |t|
      t.integer :product_id
      t.integer :features_brands_id
      t.string :seria
      t.text :seria_description
      t.string :model
      t.text :aliases
      t.text :model_description
      t.string :ean
      t.string :pn
      t.text :example

      t.timestamps null: false
    end
  end
end
