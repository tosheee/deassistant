class CreateAdminProductCategories < ActiveRecord::Migration
  def change
    create_table :admin_product_categories do |t|
      t.string :name_category

      t.timestamps null: false
    end
  end
end
