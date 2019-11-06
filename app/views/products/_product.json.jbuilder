json.extract! product, :id, :name, :cost, :weight, :created_at, :updated_at
json.url product_url(product, format: :json)
