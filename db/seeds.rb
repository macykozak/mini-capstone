# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#   products =
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Supplier.create!(name: "JD", email: "JD@test.com", phone_number: "9439007090")
Supplier.create!(name: "Yisla", email: "Yisla@test.com", phone_number: "9439007290")
Product.create!(supplier_id: 1, quantity: 50, name: "Shoes", price: 40, description: "Navy tennis shoe with orange check mark.")
Product.create!(supplier_id: 2, quantity: 50, name: "Shirt", price: 25, description: "Basic yellow tee.")
Product.create!(supplier_id: 2, quantity: 50, name: "Tie", price: 30, description: "Royal blue tie.")
Product.create!(supplier_id: 1, quantity: 50, name: "Pants", price: 100, description: "Brown cargo pants.")

Image.create!(product_id: 1, url: "https://www.kindpng.com/picc/m/1-18288_nike-shoes-hd-png-transparent-png.png")
Image.create!(product_id: 2, url: "https://imgprd19.hobbylobby.com/9/5f/26/95f264323ae49e65b2a53a909fcd7d9ee659f3c7/350Wx350H-422519-0320.jpg")
Image.create!(product_id: 3, url: "http://www.thetiesite.com/media/catalog/product/cache/1/image/650x/040ec09b1e35df139433887a97daa66f/m/n/mn600-36.jpg")
Image.create!(product_id: 4, url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fmedia.tractorsupply.com%2Fis%2Fimage%2FTractorSupplyCompany%2F1374635%3F%24456%24&imgrefurl=https%3A%2F%2Fwww.tractorsupply.com%2Ftsc%2Fproduct%2Fridgecut-mens-regular-canvas-pant&tbnid=5fFAwIqCzpXgJM&vet=12ahUKEwjN_bq5p7HwAhWjmq0KHQOjDVYQMygBegUIARDTAg..i&docid=kZkq6LOYfA515M&w=456&h=456&q=pants&ved=2ahUKEwjN_bq5p7HwAhWjmq0KHQOjDVYQMygBegUIARDTAg")
