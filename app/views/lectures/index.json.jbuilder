json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :name, :value
  json.url lecture_url(lecture, format: :json)
end
