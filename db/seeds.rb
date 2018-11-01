# Product.create!([
#   {name: "television", price: 500, image_url: " ", description: "50 in. TV"},
#   {name: "cell phone", price: 800, image_url: " ", description: "touch screen phone"},
#   {name: "television", price: 500, image_url: " ", description: "50 in. TV"},
#   {name: "cell phone", price: 800, image_url: " ", description: "touch screen phone"},
#   {name: "television", price: 500, image_url: " ", description: "50 in. TV"},
#   {name: "cell phone", price: 800, image_url: " ", description: "touch screen phone"}
# ])

# mass assign supplier_ids in products table
# each product gets a 1 or a 2
# loop through all products
# randomly assign a 1 or a 2 to each product's supplier_id

# products = Product.all

# products.each do |product|
#   product.supplier_id = rand(1..2) # random number between 1 and 2
#   product.save
# end

# image = Image.new({url: "this url", product_id: 1})
# image.save

# require 'faker'

# 10.times do
#   image = Image.create(url: Faker::Internet.url, product_id: rand(1..10))
#   image.save
# endirb(main):009:0> image = Image.first


cart = CartedProduct.new({user_id: 1, product_id: 1, quantity: 1, status: "carted", order_id: "null" })
cart.save
cart = CartedProduct.new({user_id: 2, product_id: 3, quantity: 3, status: "carted", order_id: "null" })
cart.save







