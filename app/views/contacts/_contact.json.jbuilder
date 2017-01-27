json.extract! contact, :id, :header, :body, :email, :inform, :created_at, :updated_at
json.url contact_url(contact, format: :json)