json.array!(@admin_feature_brand_attributes) do |admin_feature_brand_attribute|
  json.extract! admin_feature_brand_attribute, :id, :product_id, :features_brands_id, :seria, :seria_description, :model, :aliases, :model_description, :ean, :pn, :example
  json.url admin_feature_brand_attribute_url(admin_feature_brand_attribute, format: :json)
end
