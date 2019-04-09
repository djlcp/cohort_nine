json.extract! product, :id, :name, :costprice, :saleprice, :weight, :colour, :created_at, :updated_at
json.url product_url(product, format: :json)
