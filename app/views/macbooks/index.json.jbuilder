json.array!(@macbooks) do |macbook|
  json.extract! macbook, :id, :brand, :seria, :model, :pn, :ean, :cpu_brand, :cpu_seria, :cpu_model, :ram, :storage, :video_brand, :video_model, :display, :resolution, :touch_screan, :os
  json.url macbook_url(macbook, format: :json)
end
