# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do |i|
  Ticket.create(
  contact: Faker::Name.name,
  severity: ['High', 'Medium', 'Low'].slice(rand(0..2)),
  assigned: ['George Anderson','Stefani Irma','Peyton Conor'].slice(rand(0..2)),
  status: ['Working','Pending On Customer','Pending on Vendor','On Hold','In Queue'].slice(rand(0..4)),
  summary: Faker::Lorem.sentence,
  description: Faker::Hacker.say_something_smart
  )
end

200.times do |i|
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

8.times do |i|
  Contract.create(
  contract_title: Faker::App.name,
  contract_number: Faker::Company.duns_number,
  vendor: Faker::Company.name,
  contact: Faker::Name.name,
  po_number: "po"+rand(362..837).to_s,
  purchase_date: Faker::Date.between(300.days.ago, Date.today),
  contract_cost: "$"+rand(1000..5000).to_s,
  contract_type: ['Maintenance', 'Lease', 'Support', 'Subscription'].slice(rand(0..3)),
  start_date: Faker::Date.between(300.days.ago, Date.today),
  end_date: Faker::Date.forward(180),
  status: ['Active', 'Expired', 'Purchased'].slice(rand(0..2))
  )
end

1.times do |i|
  User.create(
  first_name: "Admin",
  last_name: "User",
  email: "admin@eric-price.net",
  password: "P@$$word123",
  password_confirmation: "P@$$word123",
  role: "admin"
  )
end
