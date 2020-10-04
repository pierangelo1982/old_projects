json.array!(@custumers) do |custumer|
  json.extract! custumer, :id, :name, :lastname, :company, :address, :cap, :city, :phone, :fax, :email, :web, :vat, :note
  json.url custumer_url(custumer, format: :json)
end
