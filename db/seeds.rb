puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all
require 'faker'

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data
s1 = Student.create(name: Faker::Name.name, age: rand(20..40), email: Faker::Internet.email, cohort_id: c1.id)
s2 = Student.create(name: Faker::Name.name, age: rand(20..40), email: Faker::Internet.email, cohort_id: c2.id)
s3 = Student.create(name: Faker::Name.name, age: rand(20..40), email: Faker::Internet.email, cohort_id: c3.id)
s4 = Student.create(name: Faker::Name.name, age: rand(20..40), email: Faker::Internet.email, cohort_id: c4.id)
s5 = Student.create(name: Faker::Name.name, age: rand(20..40), email: Faker::Internet.email, cohort_id: c5.id)
s6 = Student.create(name: Faker::Name.name, age: rand(20..40), email: Faker::Internet.email, cohort_id: c1.id)
s7 = Student.create(name: Faker::Name.name, age: rand(20..40), email: Faker::Internet.email, cohort_id: c1.id)
s8 = Student.create(name: Faker::Name.name, age: rand(20..40), email: Faker::Internet.email, cohort_id: c2.id)
s9 = Student.create(name: Faker::Name.name, age: rand(20..40), email: Faker::Internet.email, cohort_id: c5.id)
puts "Done!"