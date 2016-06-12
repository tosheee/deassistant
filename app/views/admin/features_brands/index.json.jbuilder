json.array!(@admin_features_brands) do |admin_features_brand|
  json.extract! admin_features_brand, :id, :product_id, :brand, :description
  json.url admin_features_brand_url(admin_features_brand, format: :json)
end
