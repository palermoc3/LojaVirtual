json.extract! user, :id, :name, :cpf, :email, :role, :state, :cep, :street, :number, :created_at, :updated_at
json.url user_url(user, format: :json)
