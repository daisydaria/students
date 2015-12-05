json.array!(@specialties) do |specialty|
  json.extract! specialty, :id, :code, :gen, :title, :level
  json.url specialty_url(specialty, format: :json)
end
