class CreateProductDescriptions < ActiveRecord::Migration
  def change
    create_table :product_descriptions do |t|
      t.integer :product_id
      t.text :product_description
      t.string :attr_p1
      t.text :attr_descript_p1
      t.string :attr_p2
      t.text :attr_descript_p2
      t.string :attr_p3
      t.text :attr_descript_p3
      t.string :attr_p4
      t.text :attr_descript_p4
      t.string :attr_p5
      t.text :attr_descript_p5
      t.string :attr_p6
      t.text :attr_descript_p6
      t.string :attr_p7
      t.text :attr_descript_p7
      t.string :attr_p8
      t.text :attr_descript_p8
      t.string :attr_p9
      t.text :attr_descript_p9
      t.string :attr_p10
      t.text :attr_descript_p10
      t.string :attr_p11
      t.text :attr_descript_p11
      t.string :attr_p12
      t.text :attr_descript_p12
      t.string :attr_p13
      t.text :attr_descript_p13
      t.string :attr_p14
      t.text :attr_descript_p14
      t.string :attr_p15
      t.text :attr_descript_p15
      t.string :attr_p16
      t.text :attr_descript_p16
      t.string :attr_p17
      t.text :attr_descript_p17
      t.string :attr_p18
      t.text :attr_descript_p18
      t.string :attr_p19
      t.text :attr_descript_p19
      t.string :attr_p20
      t.text :attr_descript_p20

      t.timestamps null: false
    end
  end
end
