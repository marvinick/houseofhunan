# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Menu.create(name: "Menu", description: "First draft")

unless User.exists?(email: "bossman@hunan.com")
	User.create!(email: "bossman@hunan.com", password: "housemaster", admin: true)
end