# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
#Women Items
Product.create({name: 'Top', price: 30.50,description: "This top is part of our women's collection",
                collection_type: 'women',image_url: 'https://clothing-images1.s3.amazonaws.com/top1.png', image_url2: 'https://clothing-images1.s3.amazonaws.com/top2.png', image_url3: 'https://clothing-images1.s3.amazonaws.com/top3.png', popularity: 0.0 ,date_arrived: '2020-12-5'})
Product.create({name: 'Skirt', price: 17.50, description: "This jeans are part of our women's collection",
                collection_type: 'women',image_url: 'https://clothing-images1.s3.amazonaws.com/skirt1.png', image_url2: 'https://clothing-images1.s3.amazonaws.com/skirt2.png', image_url3: 'https://clothing-images1.s3.amazonaws.com/skirt3.png', popularity: 0.0,date_arrived: '2020-12-5'})
Product.create({name: 'Hat', price: 5.50, description: "These jeans are part of our men's collection",
                collection_type: 'women',image_url: 'https://clothing-images1.s3.amazonaws.com/w_hat.png', image_url2: 'https://clothing-images1.s3.amazonaws.com/w_hat2.png', image_url3: 'https://clothing-images1.s3.amazonaws.com/w_hat3.png', popularity: 0.0,date_arrived: '2020-12-5'})

#Men Items
Product.create({name: 'Denim Jeans', price: 20.00,description: "These jeans are part of our men's collection", 
                collection_type: 'men',image_url: 'https://clothing-images1.s3.amazonaws.com/denin_men.png', image_url2: 'https://clothing-images1.s3.amazonaws.com/denim_men2.png', image_url3: 'https://clothing-images1.s3.amazonaws.com/denim_men3.png',popularity: 0.0,date_arrived: '2020-12-5'})
Product.create({name: 'Shirt', price: 7.85, description: "This shirt is part of our men's collection",
                collection_type: 'men',image_url: 'https://clothing-images1.s3.amazonaws.com/shirt_men1.png', image_url2: 'https://clothing-images1.s3.amazonaws.com/shirt_men2.png', image_url3: 'https://clothing-images1.s3.amazonaws.com/shirt_men3.png', popularity: 0.0,date_arrived: '2020-12-5'})
Product.create({name: 'Shorts', price: 6.50, description: "These shorts are part of our men's collection",
                collection_type: 'men',image_url: 'https://clothing-images1.s3.amazonaws.com/shorts_men.png', image_url2: 'https://clothing-images1.s3.amazonaws.com/shorts_men2.png', image_url3: 'https://clothing-images1.s3.amazonaws.com/shorts_men3.png', popularity: 0.0,date_arrived: '2020-12-5'})

#Kids Items
Product.create({name: 'T-Shirt', price: 10.50,description: "This t-shirt is part of our kids' collection",
                collection_type: 'kids',image_url: 'https://clothing-images1.s3.amazonaws.com/k_tshirts.png', image_url2: 'https://clothing-images1.s3.amazonaws.com/k_tshirts2.png', image_url3: 'https://clothing-images1.s3.amazonaws.com/k_tshirts3.png', popularity: 0.0,date_arrived: '2020-12-5'})
Product.create({name: 'Cap', price: 3.50, description: "This cap is part of our kids' collection",
                collection_type: 'kids',image_url: 'https://clothing-images1.s3.amazonaws.com/cap_kids.png', image_url2: 'https://clothing-images1.s3.amazonaws.com/kids_cap2.png', image_url3: 'https://clothing-images1.s3.amazonaws.com/kids_cap3.png',popularity: 0.0,date_arrived: '2020-12-5'})
Product.create({name: 'Blazer', price: 90.50, description: "This blazer is part of our kids' collection",
                collection_type: 'kids',image_url: 'https://clothing-images1.s3.amazonaws.com/blazer_kids.png', image_url2: 'https://clothing-images1.s3.amazonaws.com/blazer_kids2.png', image_url3: 'https://clothing-images1.s3.amazonaws.com/blazer_kids3.png', popularity: 0.0,date_arrived: '2020-12-5'})

#New-in Items
Product.create({name: 'Underwear', price: 8.50,description: 'This underwear is part of our new arrivals',
                collection_type: 'new-ins',image_url: 'https://clothing-images1.s3.amazonaws.com/underwear.png', image_url2: 'https://clothing-images1.s3.amazonaws.com/underwear2.png', image_url3: 'https://clothing-images1.s3.amazonaws.com/underwear2.png', popularity: 0.0,date_arrived: '2020-12-5'})
Product.create({name: 'Trainers', price: 100.00, description: 'These trainers are part of our new arrivals',
                collection_type: 'new-ins',image_url: 'https://clothing-images1.s3.amazonaws.com/trainers.png', image_url2: 'https://clothing-images1.s3.amazonaws.com/trainers2.png', image_url3: 'https://clothing-images1.s3.amazonaws.com/trainers3.png', popularity: 0.0,date_arrived: '2020-12-5'})
Product.create({name: 'Fedora', price: 32.00, description: 'This fedora is part of our new arrivals',
                collection_type: 'new-ins',image_url: 'https://clothing-images1.s3.amazonaws.com/fedora.png', image_url2: 'https://clothing-images1.s3.amazonaws.com/fedora2.png', image_url3: 'https://clothing-images1.s3.amazonaws.com/fedora3.png', popularity: 0.0,date_arrived: '2020-12-5'})

#Dummy Test User
SavedList.destroy_all

