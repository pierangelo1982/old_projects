json.array!(@typologies) do |typology|
  json.extract! typology, :id, :name
  json.url typology_url(typology, format: :json)
end
