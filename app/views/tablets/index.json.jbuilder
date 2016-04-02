json.array!(@tablets) do |tablet|
  json.extract! tablet, :id, :brand, :seria, :model, :connection, :storage, :color, :aen, :partnumber
  json.url tablet_url(tablet, format: :json)
end
