json.array!(@words) do |word|
  json.extract! word, :id, :original, :translated
  json.url word_url(word, format: :json)
end
