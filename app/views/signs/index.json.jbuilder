json.array!(@signs) do |sign|
  json.extract! sign, :id, :description
  json.url sign_url(sign, format: :json)
end
