# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times.each do |num|
    Student.create(first_name: "Name #{num}", last_name: "Last Name #{num}")
end

10.times.each do |num|
    SchoolClass.create(title: "Class #{num}", room_number: "#{num}")
end