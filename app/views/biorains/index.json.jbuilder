json.array!(@biorains) do |biorain|
  json.extract! biorain, :id, :description
  json.url biorain_url(biorain, format: :json)
end
