json.array!(@rubrics) do |rubric|
  json.extract! rubric, :id, :name, :nambe, :rubric_id
  json.url rubric_url(rubric, format: :json)
end
