json.array!(@manufacturers) do |manufacturer|
  json.extract! manufacturer, :id, :title, :logo
  json.url manufacturer_url(manufacturer, format: :json)
end
