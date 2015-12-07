json.array!(@ads) do |ad|
  json.extract! ad, :id, :name, :content, :profile_id, :rubric_id
  json.url ad_url(ad, format: :json)
end
