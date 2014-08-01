json.array!(@cards) do |card|
  json.extract! card, :id, :title, :card_type, :symptoms, :date, :doctor, :color
  json.medications card.medications do |medication|
    json.(medication, :name)
  end
  json.url card_url(card, format: :json)
end
