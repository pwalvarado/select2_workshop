json.array!(@groups) do |group|
  json.extract! group, :id, :schedule, :course_id, :quota, :enrolled, :minimun
  json.url group_url(group, format: :json)
end
