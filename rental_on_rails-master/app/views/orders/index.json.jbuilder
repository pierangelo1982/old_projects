json.array!(@orders) do |order|
  json.extract! order, :id, :custumer_id, :product_ids, :start, :end, :number_day, :cleaning, :insurance, :delivery_id, :taxation_id, :price_pretax, :price_tax, :total, :status
  json.url order_url(order, format: :json)
end

