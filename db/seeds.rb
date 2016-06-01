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
