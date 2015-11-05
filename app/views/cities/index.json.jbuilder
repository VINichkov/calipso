json.array!(@cities) do |city|
  json.extract! city, :id, :alias, :name
  json.url city_url(city, format: :json)
end
