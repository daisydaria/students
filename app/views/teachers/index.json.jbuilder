json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :lname, :fname, :sname, :birth, :degree, :rank, :post
  json.url teacher_url(teacher, format: :json)
end
