Jbuilder.encode do |json|
  json.array! @tweets do |tweet|
    json tweet
  end
end
