json.array!(@sizes) do |size|
  json.extract! size, :id, :name, :volume, :unit
  json.url size_url(size, format: :json)
end
