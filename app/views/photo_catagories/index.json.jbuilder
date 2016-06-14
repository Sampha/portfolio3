json.array!(@photo_catagories) do |photo_catagory|
  json.extract! photo_catagory, :id, :name
  json.url photo_catagory_url(photo_catagory, format: :json)
end
