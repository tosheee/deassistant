class CreateFeaturesCountries < ActiveRecord::Migration
  def change
    create_table :features_countries do |t|
      t.string :name
      t.text :featrure
      t.string :example
      t.string :img

      t.timestamps null: false
    end
  end
end
