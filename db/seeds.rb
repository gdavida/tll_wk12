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

Location.create!(branch_name: "Downtown", address:"123 S Main St", contact_name: "Carol")
Location.create!(branch_name: "Main", address:"8th and Railroad", contact_name: "Beth")
Location.create!(branch_name: "Callie", address:"1450 E 48th St", contact_name: "Fred")

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

User.create!(first_name:"Davida", last_name: "Gaffney", role: "administrator", phone: "123-456-2342", email: "davida@davida.com", password: "doghat", password_confirmation: "doghat")
User.create!(first_name:"Sadie", last_name: "McGarvey", role: "volunteer", phone: "423-344-1234", email: "sadie@sadie.com", password: "password", password_confirmation: "password")
User.create!(first_name:"Patrick", last_name: "Gaffney", role: "patron", phone: "123-456-2342", email: "patrick@patrick.com", password: "brooklyn", password_confirmation: "brooklyn")
User.create!(first_name:"Patty", last_name: "Kreikemeier", role: "patron", phone: "402-555-2322", email: "patty@patty.com", password: "mypassword", password_confirmation: "mypassword")
User.create!(first_name:"Tom", last_name: "Gaffney", role: "patron", phone: "925-555-1234", email: "tom@tom.com", password: "tomtom", password_confirmation: "tomtom")
User.create!(first_name:"Lina", last_name: "Gaffney", role: "volunteer", phone: "123-456-2342", email: "lina@lina.com", password: "linalina", password_confirmation: "linalina")
User.create!(first_name:"Cory", last_name: "Era-McGarvey", role: "patron", phone: "402-555-1234", email: "cory@cory.com", password: "corycory", password_confirmation: "corycory")
User.create!(first_name:"Phyu", last_name: "Win", role: "patron", phone: "925-555-4444", email: "phyu@phyu.com", password: "burmamyanmar", password_confirmation: "burmamyanmar")