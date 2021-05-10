# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
#Women Items
product1 = Product.create({:name=>"Top", :price => 30.50,:collection_type=>"women",:image_url=>"https://clothing-images1.s3.amazonaws.com/top1.png", :date_arrived=>"2020-12-5"})
product2 = Product.create({:name=>"Skirt", :price => 17.50, :collection_type=>"women",:image_url=>"https://clothing-images1.s3.amazonaws.com/skirt1.png", :date_arrived=>"2020-12-5"})
product3 = Product.create({:name=>"Hat", :price => 5.50, :collection_type=>"women",:image_url=>"https://clothing-images1.s3.amazonaws.com/w_hat.png", :date_arrived=>"2020-12-5"})

#Men Items
product4 = Product.create({:name=>"Denim Jeans", :price => 20.00, :collection_type=>"men",:image_url=>"https://clothing-images1.s3.amazonaws.com/denin_men.png", :date_arrived=>"2020-12-5"})
product5 = Product.create({:name=>"Shirt", :price => 7.85, :collection_type=>"men",:image_url=>"https://clothing-images1.s3.amazonaws.com/shirt_men1.png", :date_arrived=>"2020-12-5"})
product6 = Product.create({:name=>"Shorts", :price => 6.50, :collection_type=>"men",:image_url=>"https://clothing-images1.s3.amazonaws.com/shorts_men.png", :date_arrived=>"2020-12-5"})

#Kids Items
product7 = Product.create({:name=>"T-Shirt", :price => 10.50,:collection_type=>"kids",:image_url=>"https://clothing-images1.s3.amazonaws.com/k_tshirts.png", :date_arrived=> "2020-12-5"})
product8 = Product.create({:name=>"Cap", :price => 3.50, :collection_type=>"kids",:image_url=>"https://clothing-images1.s3.amazonaws.com/cap_kids.png", :date_arrived=>"2020-12-5"})
product9 = Product.create({:name=>"Blazer", :price => 90.50, :collection_type=>"kids",:image_url=>"https://clothing-images1.s3.amazonaws.com/blazer_kids.png", :date_arrived=>"2020-12-5"})

#New-in Items
product10 = Product.create({:name=>"Underwear", :price => 8.50,:collection_type=>"new-ins",:image_url=>"https://clothing-images1.s3.amazonaws.com/underwear.png", :date_arrived=>"2020-12-5"})
product11 = Product.create({:name=>"Trainers", :price => 100.00, :collection_type=>"new-ins",:image_url=>"https://clothing-images1.s3.amazonaws.com/trainers.png", :date_arrived=>"2020-12-5"})
product12 = Product.create({:name=>"Fedora", :price => 32.00, :collection_type=>"new-ins",:image_url=>"https://clothing-images1.s3.amazonaws.com/fedora.png", :date_arrived=>"2020-12-5"})

SavedList.destroy_all

