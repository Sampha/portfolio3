json.array!(@shippings) do |shipping|
  json.extract! shipping, :id, :name, :cost, :order_id
  json.url shipping_url(shipping, format: :json)
end
