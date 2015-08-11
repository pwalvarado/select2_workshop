json.array!(@people) do |person|
  json.extract! person, :id, :name, :favorite_color
  json.url person_url(person, format: :json)
end
