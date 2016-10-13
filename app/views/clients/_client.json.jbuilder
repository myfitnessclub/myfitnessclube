json.extract! client, :id, :first_name, :last_name, :email, :mobile, :street_address1, :street_address2, :city, :state, :pin, :created_at, :updated_at
json.url client_url(client, format: :json)