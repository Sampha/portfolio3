json.array!(@photographs) do |photograph|
  json.extract! photograph, :id, :title, :image, :descritpion, :active, :is_cover, :order, :price, :photo_catagory_id
  json.url photograph_url(photograph, format: :json)
end
