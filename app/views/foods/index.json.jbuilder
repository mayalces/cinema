json.array!(@foods) do |food|
  json.extract! food, :id, :name, :price
  json.url food_url(food, format: :json)
end
