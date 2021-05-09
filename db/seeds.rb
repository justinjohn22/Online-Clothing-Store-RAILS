# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Women Items
Product.delete_all
product1 = Product.create({:name=>"Top", :price => 30.50,:collection_type=>"women"})
product2 = Product.create({:name=>"Skirt", :price => 17.50, :collection_type=>"women"})
product3 = Product.create({:name=>"Hat", :price => 5.50, :collection_type=>"women"})

#Men Items
product4 = Product.create({:name=>"Denim Jeans", :price => 20.00, :collection_type=>"men"})
product5 = Product.create({:name=>"Shirt", :price => 7.85, :collection_type=>"men"})
product6 = Product.create({:name=>"Shorts", :price => 6.50, :collection_type=>"men"})

#Kids Items
product7 = Product.create({:name=>"T-Shirt", :price => 10.50,:collection_type=>"kids"})
product8 = Product.create({:name=>"Cap", :price => 3.50, :collection_type=>"kids"})
product9 = Product.create({:name=>"Blazer", :price => 90.50, :collection_type=>"kids"})

#New-in Items
product10 = Product.create({:name=>"Underwear", :price => 8.50,:collection_type=>"new-ins"})
product11 = Product.create({:name=>"Trainers", :price => 100.00, :collection_type=>"new-ins"})
product12 = Product.create({:name=>"Fedora", :price => 32.00, :collection_type=>"new-ins"})

