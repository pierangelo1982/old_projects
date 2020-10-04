json.array!(@products) do |product|
  json.extract! product, :id, :title, :model, :manufacturer_id, :typology_id, :weight, :size, :description, :image, :price, :serial_number
  json.url product_url(product, format: :json)
end
