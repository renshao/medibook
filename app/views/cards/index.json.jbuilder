json.array!(@cards) do |card|
  json.extract! card, :id, :title, :card_type, :symptoms, :medications_array, :date, :doctor, :color
  json.url card_url(card, format: :json)
end
