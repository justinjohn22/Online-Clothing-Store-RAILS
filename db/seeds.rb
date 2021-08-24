# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
#Women Items
Product.create({name: 'Top', price: 30.50, description: "This top is part of our women's collection", filter_description: "summer top gray grey small s ", colour: 'grey', size: "s",category: "summer",
                collection_type: 'women',image_url: 'https://drive.google.com/uc?id=16zmyN-WCioPtJqSMo4io-y5FCtarmHBc', image_url2: 'https://drive.google.com/uc?id=1GIvvt399lci-XVLhPc3KBJOVdkj9q3Pn', image_url3: 'https://drive.google.com/uc?id=1zGt6NoK7tT9G89Rbyh-tkfFHX0rpR_xW', popularity: 0.0 ,date_arrived: '2020-12-5'})
Product.create({name: 'Skirt', price: 17.50, description: "This jeans are part of our women's collection", filter_description: "indoors skirt red m medium ", colour: 'red', size: "m",category: "indoors",
                collection_type: 'women',image_url: 'https://drive.google.com/uc?id=1cl4PqtLTABZD7r4MB6EOprgcNPTgGdmC', image_url2: 'https://drive.google.com/uc?id=1a2qMExnkCm6eVKlUnRkJXB-xBtYTgXGo', image_url3: 'https://drive.google.com/uc?id=1zEM3BoU1Hrkv6l9btZYXjipJZp_XgmVp', popularity: 0.0,date_arrived: '2020-12-5'})
Product.create({name: 'Hat', price: 5.50, description: "This hat is part of our women's collection", filter_description: "outdoors hat  brown summer large ", colour: 'brown', size: "l",category: "outdoors",
                collection_type: 'women',image_url: 'https://drive.google.com/uc?id=1WN4XL5rquP8k1ifgGO952Qk9YObCX6yo', image_url2: 'https://drive.google.com/uc?id=1pgKVBi0-BzUceSrrBitZHeIUTc_grNgh', image_url3: 'https://drive.google.com/uc?id=1YQQ-uwlfKnU_-Zwg_p65vJCIUr56Gnfd', popularity: 0.0,date_arrived: '2020-12-5'})

#Men Items
Product.create({name: 'Denim Jeans', price: 20.00,description: "These jeans are part of our men's collection", filter_description: "outdoors denim jeans blue xl extra large extra-large ", colour: 'blue', size: "xl",category: "outdoors",
                collection_type: 'men',image_url: 'https://drive.google.com/uc?id=1ivg7Ny0YLWTJ02r8grrrkQrFIz5Hlgk9', image_url2: 'https://drive.google.com/uc?id=1aLhH0Qba08Jy6yKYndNaL2DPINsq63tE', image_url3: 'https://drive.google.com/uc?id=1HYFyqeeoHAmztHIjomOdZIy5SY6saRz1',popularity: 0.0,date_arrived: '2020-12-5'})
Product.create({name: 'Shirt', price: 7.85, description: "This shirt is part of our men's collection", filter_description: "formal shirt green  s small ", colour: 'green', size: "s",category: "formal",
                collection_type: 'men',image_url: 'https://drive.google.com/uc?id=12IVB6aPxjgIy3aR2qbu-7Us2UftISH_M', image_url2: 'https://drive.google.com/uc?id=1tkvvF9mW4abS1KC1Vms6HdpNzewMIOQX', image_url3: 'https://drive.google.com/uc?id=1S2B46pk_al1t8MayUaQivVvNXHCoKpWW', popularity: 0.0,date_arrived: '2020-12-5'})
Product.create({name: 'Shorts', price: 6.50, description: "These shorts are part of our men's collection", filter_description: "summer shorts blue xxl ", colour: 'blue', size: "xxl",category: "summer",
                collection_type: 'men',image_url: 'https://drive.google.com/uc?id=11uh3Kqefhn904NO1KEhUpUFA5c__gV0f', image_url2: 'https://drive.google.com/uc?id=1hQ3bUXIOuSW8qhgkES0SIKm5woKzSJEY', image_url3: 'https://drive.google.com/uc?id=14QVWakmLHrqHxwIANoNUiBg8I1HFC3bE', popularity: 0.0,date_arrived: '2020-12-5'})

#Kids Items
Product.create({name: 'T-Shirt', price: 10.50,description: "This t-shirt is part of our kids' collection", filter_description: "summer t-shirt t shirt kids black printed t shirt printed t-shirt large l", colour: 'black', size: "l",category: "summer",
                collection_type: 'kids',image_url: 'https://drive.google.com/uc?id=159v0Xqp2d-Z_M2aaleCI1onHaA8OqS8Y', image_url2: 'https://drive.google.com/uc?id=1w0Neud6fcIGaDEF5qqjY3FUzgz797u2L', image_url3: 'https://drive.google.com/uc?id=10NusBfOr2T1JoPzNH9fLn-9Omybuy4Vg', popularity: 0.0,date_arrived: '2020-12-5'})
Product.create({name: 'Cap', price: 3.50, description: "This cap is part of our kids' collection", filter_description: "outdoors cap summer kids blue xl", colour: 'blue', size: "xl",category: "outdoors",
                collection_type: 'kids',image_url: 'https://drive.google.com/uc?id=1r4VHM4P82jYLiJ5h3Aqk6_ccwYeCNsJ2', image_url2: 'https://drive.google.com/uc?id=19_trPdgtLPv716F2BxXgDvWLZOTFIm_D', image_url3: 'https://drive.google.com/uc?id=1Wa6zevfgIcXjhANA0Y9FY9oXg2f84tqt', popularity: 0.0, date_arrived: '2020-12-5'})
Product.create({name: 'Blazer', price: 90.50, description: "This blazer is part of our kids' collection", filter_description: "formal kids white small s", colour: 'white', size: "s",category: "formal",
                collection_type: 'kids',image_url: 'https://drive.google.com/uc?id=1r31qVLUe_o_Nw_CjUsr8dN17TGOZNu2c', image_url2: 'https://drive.google.com/uc?id=15MI7UB0OMN3DaXOXEJHFqGwQazcZWPx9', image_url3: 'https://drive.google.com/uc?id=13Qb6WTFD_VuvgUYJXz-xVgAD3tOqN3Hh', popularity: 0.0,date_arrived: '2020-12-5'})

#New-in Items
Product.create({name: 'Underwear', price: 8.50,description: 'This underwear is part of our new arrivals', filter_description: "underwear black  xxl", colour: 'black', size: "xxl",category: "underwear",
                collection_type: 'new-ins',image_url: 'https://drive.google.com/uc?id=1xNpEMAvsNidZW7JrNH-JimPpy1w2OAe-', image_url2: 'https://drive.google.com/uc?id=1EC7mEDuhhpDr4BJ3kHgnKGISkSHwE8m9', image_url3: 'https://drive.google.com/uc?id=1y5OLIxAxdYHNhIwr6MEx4ayO1I3E0BXB', popularity: 0.0, date_arrived: '2020-12-5'})
Product.create({name: 'Trainers', price: 100.00, description: 'These trainers are part of our new arrivals', filter_description: "outdoors trainers sport sports  white", colour: 'white', size: "m", category: "outdoors",
                collection_type: 'new-ins',image_url: 'https://drive.google.com/uc?id=10XAjv-kC8fLUdcwgUFqnU7AJelc3j3FA', image_url2: 'https://drive.google.com/uc?id=1Wu3fN5BTXeio93t3HNK4KV2AfKCWRo49', image_url3: 'https://drive.google.com/uc?id=1Iu-SfBoZUb507_JLJiLyVtXtgA1U-GyU', popularity: 0.0, date_arrived: '2020-12-5'})
Product.create({name: 'Fedora', price: 32.00, description: 'This fedora is part of our new arrivals', filter_description: "outdoors kid kids brown large hat fedora", colour: 'brown', size: "l",category: "outdoors",
                collection_type: 'new-ins',image_url: 'https://drive.google.com/uc?id=1gGOR2lUC2darH4lxq_X3h0-JAEMZDmOQ', image_url2: 'https://drive.google.com/uc?id=1f1usAv_1mqXw4Vbnuw9Kgmb1Y5wbQkVq', image_url3: 'https://drive.google.com/uc?id=1SsplkDBxaZtN44bsqeqwFwGpr6fd6jcJ', popularity: 0.0, date_arrived: '2020-12-5'})

#Dummy Test User
SavedList.destroy_all
