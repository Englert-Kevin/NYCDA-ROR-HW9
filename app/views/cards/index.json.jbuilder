json.array!(@cards) do |card|
  json.extract! card, :id, :user_id, :number, :security, :expiration, :name, :address1, :address2, :city, :state, :zip, :country
  json.url card_url(card, format: :json)
end
