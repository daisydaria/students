json.array!(@departments) do |department|
  json.extract! department, :id, :num, :title, :superunit
  json.url department_url(department, format: :json)
end
