class CreateTablets < ActiveRecord::Migration
  def change
    create_table :tablets do |t|
      t.string :brand
      t.string :seria
      t.string :model
      t.string :connection
      t.string :storage
      t.string :color
      t.string :aen
      t.string :partnumber

      t.timestamps null: false
    end
  end
end
