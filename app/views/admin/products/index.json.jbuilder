json.array!(@admin_products) do |admin_product|
  json.extract! admin_product, :id, :product_category_id, :product_name
  json.url admin_product_url(admin_product, format: :json)
end
