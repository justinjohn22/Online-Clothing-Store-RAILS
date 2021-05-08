# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Women Items
product1 = Product.create({:product_id=>1,:name=>"Top", :price => 30.50,:collection_type=>"women"})
product2 = Product.create({:product_id=>2,:name=>"Skirt", :price => 17.50, :collection_type=>"women"})
product3 = Product.create({:product_id=>3,:name=>"Hat", :price => 5.50, :collection_type=>"women"})

#Men Items
product4 = Product.create({:product_id=>4,:name=>"Denim Jeans", :price => 20.00, :collection_type=>"men"})
product5 = Product.create({:product_id=>5,:name=>"Shirt", :price => 7.85, :collection_type=>"men"})
product6 = Product.create({:product_id=>6,:name=>"Shorts", :price => 6.50, :collection_type=>"men"})

#Kids Items
product7 = Product.create({:product_id=>7,:name=>"T-Shirt", :price => 10.50,:collection_type=>"kid"})
product8 = Product.create({:product_id=>8,:name=>"Cap", :price => 3.50, :collection_type=>"kid"})
product9 = Product.create({:product_id=>9,:name=>"Blazer", :price => 90.50, :collection_type=>"kid"})

#New-in Items
product10 = Product.create({:product_id=>10,:name=>"Underwear", :price => 8.50,:collection_type=>"new-in"})
product11 = Product.create({:product_id=>11,:name=>"Trainers", :price => 100.00, :collection_type=>"new-in"})
product12 = Product.create({:product_id=>12,:name=>"Fedora", :price => 32.00, :collection_type=>"new-in"})

