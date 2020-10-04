json.array!(@taxations) do |taxation|
  json.extract! taxation, :id, :title, :value, :description
  json.url taxation_url(taxation, format: :json)
end
