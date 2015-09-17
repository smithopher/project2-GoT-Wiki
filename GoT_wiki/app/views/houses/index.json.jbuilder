json.array!(@houses) do |house|
  json.extract! house, :id, :house_name, :description
  json.url house_url(house, format: :json)
end
