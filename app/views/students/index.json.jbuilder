json.array!(@students) do |student|
  json.extract! student, :id, :l_n, :f_n, :s_n, :birth, :studbook
  json.url student_url(student, format: :json)
end
