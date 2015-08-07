# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

12.times do |i|
  Ticket.create(
  contact: Faker::Name.name,
  severity: ['High', 'Medium', 'Low'].slice(rand(0..2)),
  assigned: ['George Anderson','Stefani Irma','Peyton Conor'].slice(rand(0..2)),
  status: ['Working','Pending On Customer','Pending on Vendor','On Hold','In Queue'].slice(rand(0..4)),
  summary: Faker::Lorem.sentence,
  description: Faker::Lorem.paragraph
  )
end

35.times do |i|
  Inventory.create(
  name: "pc"+rand(2321..8439).to_s,
  barcode: Faker::Code.isbn,
  serial: rand(3423822..23742349).to_s,
  service_tag: Faker::Code.ean,
  equipment: ['Laptop', 'Desktop', 'Phone', 'Mobile Device'].slice(rand(0..3)),
  manufacturer: ['Lenovo', 'HP', 'Apple'].slice(rand(0..2)),
  owner: Faker::Name.name,
  model: "T"+rand(6373..9323).to_s,
  department: ['Accounting', 'Investments', 'HR', 'Sales'].slice(rand(0..3)),
  status: ['In Use', 'Spare', 'Disposed', 'In Repair', 'Lost', 'Stolen'].slice(rand(0..5))
  )
end
