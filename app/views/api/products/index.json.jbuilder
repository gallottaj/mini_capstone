json.array! @products do |product|
  json.name product.name
  json.description product.description
  json.price product.price
  json.supplier_id product.supplier_id
  json.created_at product.created_at
  json.updated_at product.updated_at
end