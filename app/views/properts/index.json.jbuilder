json.array!(@properts) do |propert|
  json.extract! propert, :id, :code, :name, :value
  json.url propert_url(propert, format: :json)
end
