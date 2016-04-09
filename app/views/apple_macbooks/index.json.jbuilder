json.array!(@apple_macbooks) do |apple_macbook|
  json.extract! apple_macbook, :id, :brand, :seria, :model, :pn, :ean, :cpu_brand, :cpu_seria, :cpu_model, :ram, :storage, :video_brand, :video_model, :display, :resolution, :touch_screen, :os
  json.url apple_macbook_url(apple_macbook, format: :json)
end
