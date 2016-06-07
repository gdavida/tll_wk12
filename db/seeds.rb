# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



AgeGroup.create!(age:"0 - 3 months", color:"white")
AgeGroup.create!(age:"3 - 6 months", color:"orange")
AgeGroup.create!(age:"7 - 12 months", color:"yellow")
AgeGroup.create!(age:"12 - 24 months", color:"red")
AgeGroup.create!(age:"24 - 36 months", color:"green")
AgeGroup.create!(age:"3 - 5 years", color:"blue")

Location.create!(branch_name: "Main Branch", address:"401 E 8th St #207, Sioux Falls, SD 57103", contact_name: "Carol", iframe: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2891.806136776735!2d-96.72372068460236!3d43.54808286723985!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x878eb59af52c8d8d%3A0x168b5986d6ae83f8!2sHealth+Connect!5e0!3m2!1sen!2sus!4v1465132464855")
Location.create!(branch_name: "Downtown Public Library", address:"200 N Dakota Ave, Sioux Falls, SD 57104", contact_name: "Beth", iframe: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2891.7520376104853!2d-96.7311124845056!3d43.549210479125044!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x878eb598bbcea107%3A0x8588b213cad08e56!2s200+N+Dakota+Ave%2C+Sioux+Falls%2C+SD+57104!5e0!3m2!1sen!2sus!4v1465132508769")
Location.create!(branch_name: "Oak View Public Library", address:"3700 E. 3rd St, Sioux Falls, SD 57103", contact_name: "Fred", iframe: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2891.433924232407!2d-96.6825517845054!3d43.55584057912473!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x878eb4618f83b4e3%3A0x46f80dd70feb014!2s3700+E+3rd+St%2C+Sioux+Falls%2C+SD+57103!5e0!3m2!1sen!2sus!4v1465132534305")
Location.create!(branch_name: "Ronning Public Library", address:"3100 E. 49th St, Sioux Falls, SD 57103", contact_name: "Barb", iframe: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2893.7342522821814!2d-96.69002338450696!3d43.50787907912656!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x878eb697a0a2a1b9%3A0x450ec124b4316bdc!2s3100+E+49th+St%2C+Sioux+Falls%2C+SD+57103!5e0!3m2!1sen!2sus!4v1465132559444")

Status.create!(category:"checked in", color:"green")
Status.create!(category:"checked out", color:"red")
Status.create!(category:"out of circulation", color:"black")
Status.create!(category:"pending cleaning", color:"yellow")

Box.create!(name:"A1", age_group_id:1, status_id:1, user_id:1, location_id:1)
Box.create!(name:"A2", age_group_id:1, status_id:1, user_id:2, location_id:1)
Box.create!(name:"B1", age_group_id:2, status_id:1, user_id:3, location_id:1)
Box.create!(name:"B2", age_group_id:2, status_id:1, user_id:2, location_id:2)
Box.create!(name:"C1", age_group_id:3, status_id:1, user_id:1, location_id:3)
Box.create!(name:"D1", age_group_id:4, status_id:1, user_id:4, location_id:3)
Box.create!(name:"E1", age_group_id:5, status_id:1, user_id:5, location_id:2)
Box.create!(name:"F1", age_group_id:6, status_id:1, user_id:1, location_id:2)


Toy.create!(name: "Mr. Potato Head", brand: "Some Brand",upc: "B005KJE9L2", manufacturer_suggested_age: "1 yr +", website: "www.google.com", purchased_from: "Target", price: "14.99", toy_image: "http://i.infopls.com/images/Mr_Potato_Head_toy_H.jpg", pieces: 13, box_id: 4, age_group_id: 3)
Toy.create!(name: "Flexi-Loop", upc: "885147093043", toy_image: "http://ecx.images-amazon.com/images/I/71vjqnKDReL._SX355_.jpg", pieces: 1, box_id: 1, age_group_id: 1, brand: "Some Brand", manufacturer_suggested_age: "2 yr +", website: "www.google.com", purchased_from: "Target", price: "14.99")
Toy.create!(name: "Links", upc: "786417014846", toy_image: "http://www.toysrus.com/graphics/product_images/pTRU1-5744994reg.jpg", pieces: 4, box_id: 1, age_group_id: 1, brand: "Some Brand", manufacturer_suggested_age: "2 yr +", website: "www.google.com", purchased_from: "Target", price: "14.99")
Toy.create!(name: "Learning with Animals Book", upc: "0756634687", toy_image: "http://www.dhresource.com/0x0s/f2-albu-g4-M00-83-69-rBVaEFbvvfWAPYO7AAS2nalp93o574.jpg/new-baby-039-s-cognitive-cloth-book-4-pcs.jpg", pieces: 1, box_id: 1, age_group_id: 1, brand: "Other Brand", manufacturer_suggested_age: "5 yr +", website: "www.google.com", purchased_from: "Sl's ToyBarn", price: "4.99")
Toy.create!(name: "Duck", upc: "735282310010", toy_image: "http://ekmpowershop9.com/ekmps/shops/bargainwarehous/images/toy-squeezy-duck-plastic-5cm-yellow-pw-9465-p.jpg", pieces: 1, box_id: 1, age_group_id: 1, brand: "Mattel", manufacturer_suggested_age: "1 yr +", website: "www.google.com", purchased_from: "ToyChest", price: "33.00")

User.create!(first_name:"Davida", last_name: "Gaffney", role: "administrator", phone: "123-456-2342", email: "davida@davida.com", password: "password", password_confirmation: "password")
User.create!(first_name:"Sadie", last_name: "McGarvey", role: "volunteer", phone: "423-344-1234", email: "sadie@sadie.com", password: "password", password_confirmation: "password")
User.create!(first_name:"Patrick", last_name: "Gaffney", role: "patron", phone: "123-456-2342", email: "patrick@patrick.com", password: "brooklyn", password_confirmation: "brooklyn")
User.create!(first_name:"Patty", last_name: "Kreikemeier", role: "patron", phone: "402-555-2322", email: "patty@patty.com", password: "mypassword", password_confirmation: "mypassword")
User.create!(first_name:"Tom", last_name: "Gaffney", role: "patron", phone: "925-555-1234", email: "tom@tom.com", password: "tomtom", password_confirmation: "tomtom")
User.create!(first_name:"Lina", last_name: "Gaffney", role: "volunteer", phone: "123-456-2342", email: "lina@lina.com", password: "linalina", password_confirmation: "linalina")
User.create!(first_name:"Cory", last_name: "Era-McGarvey", role: "patron", phone: "402-555-1234", email: "cory@cory.com", password: "corycory", password_confirmation: "corycory")
User.create!(first_name:"Phyu", last_name: "Win", role: "patron", phone: "925-555-4444", email: "phyu@phyu.com", password: "burmamyanmar", password_confirmation: "burmamyanmar")