# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Location.create!(branch: "Downtown", address:"123 S Main St", contact_name: "Carol")
# Location.create!(branch: "Main", address:"8th and Railroad", contact_name: "Beth")
# Location.create!(branch: "Callie", address:"1450 E 48th St", contact_name: "Fred")

AgeGroup.create!(age:"0 - 3 months", color:"white")
AgeGroup.create!(age:"3 - 6 months", color:"orange")
AgeGroup.create!(age:"7 - 12 months", color:"yellow")
AgeGroup.create!(age:"12 - 24 months", color:"red")
AgeGroup.create!(age:"24 - 36 months", color:"green")
AgeGroup.create!(age:"3 - 5 years", color:"blue")