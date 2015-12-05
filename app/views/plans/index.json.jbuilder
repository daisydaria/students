json.array!(@plans) do |plan|
  json.extract! plan, :id, :form, :period
  json.url plan_url(plan, format: :json)
end
