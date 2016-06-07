json.array!(@admin_product_attributes) do |admin_product_attribute|
  json.extract! admin_product_attribute, :id, :product_id, :name_attribute, :attribute_description
  json.url admin_product_attribute_url(admin_product_attribute, format: :json)
end
