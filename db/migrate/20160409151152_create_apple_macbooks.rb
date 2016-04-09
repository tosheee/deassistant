class CreateAppleMacbooks < ActiveRecord::Migration
  def change
    create_table :apple_macbooks do |t|
      t.string :brand
      t.string :seria
      t.string :model
      t.string :pn
      t.string :ean
      t.string :cpu_brand
      t.string :cpu_seria
      t.string :cpu_model
      t.string :ram
      t.string :storage
      t.string :video_brand
      t.string :video_model
      t.string :display
      t.string :resolution
      t.string :touch_screen
      t.string :os

      t.timestamps null: false
    end
  end
end
