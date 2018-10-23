Product.create!([
  {name: "television", price: 500, image_url: " ", description: "50 in. TV"},
  {name: "cell phone", price: 800, image_url: " ", description: "touch screen phone"},
  {name: "television", price: 500, image_url: " ", description: "50 in. TV"},
  {name: "cell phone", price: 800, image_url: " ", description: "touch screen phone"},
  {name: "television", price: 500, image_url: " ", description: "50 in. TV"},
  {name: "cell phone", price: 800, image_url: " ", description: "touch screen phone"}
])

# mass assign supplier_ids in products table
# each product gets a 1 or a 2
# loop through all products
# randomly assign a 1 or a 2 to each product's supplier_id

products = Product.all

products.each do |product|
  product.supplier_id = rand(1..2) # random number between 1 and 2
  product.save
end


# products = Product.all

# products.each do |product|
#   product.supplier_id = rand(1..2)# random number between 1 and 2
#   product.save
# # end