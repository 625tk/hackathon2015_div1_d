json.array! @tweets do |tweet|
  json.extract! tweet, :id, :text, :created_at
end
