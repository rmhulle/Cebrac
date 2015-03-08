json.array!(@identities) do |identity|
  json.extract! identity, :id, :name, :enrollment_id, :class, :expiration, :campus, :user_name, :user_id, :last_printed
  json.url identity_url(identity, format: :json)
end
