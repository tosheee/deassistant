json.array!(@product_descriptions) do |product_description|
  json.extract! product_description, :id, :product_id, :product_description, :attr_p1, :attr_descript_p1, :attr_p2, :attr_descript_p2, :attr_p3, :attr_descript_p3, :attr_p4, :attr_descript_p4, :attr_p5, :attr_descript_p5, :attr_p6, :attr_descript_p6, :attr_p7, :attr_descript_p7, :attr_p8, :attr_descript_p8, :attr_p9, :attr_descript_p9, :attr_p10, :attr_descript_p10, :attr_p11, :attr_descript_p11, :attr_p12, :attr_descript_p12, :attr_p13, :attr_descript_p13, :attr_p14, :attr_descript_p14, :attr_p15, :attr_descript_p15, :attr_p16, :attr_descript_p16, :attr_p17, :attr_descript_p17, :attr_p18, :attr_descript_p18, :attr_p19, :attr_descript_p19, :attr_p20, :attr_descript_p20
  json.url product_description_url(product_description, format: :json)
end
