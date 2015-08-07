# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
  Ticket.create(contact: "John Smith", severity: "Medium", assigned: "Peyton Conor", status: "In Queue", summary: "Need toner", description: "Tracking ticket for toner request.")
end
