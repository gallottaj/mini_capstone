
json.array! @products do |Product|
json.id @products.id
json.name @products.price
json.image_url @products.image_url
json.description @products.description
json.created_at @products.created_at
json.updated_at @products.updated_at
end