json.extract! add_product, :id, :name, :cost, :weight, :product_id, :created_at, :updated_at
json.url add_product_url(add_product, format: :json)
