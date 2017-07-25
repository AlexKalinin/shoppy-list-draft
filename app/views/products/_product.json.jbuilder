json.extract! product, :id, :name, :description, :amount, :units, :created_at, :updated_at
json.url product_url(product, format: :json)
