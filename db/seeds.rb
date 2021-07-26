puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
10.times do
  Cohort.create(
  name: Faker::Name.first_name,
  current_mod: rand(1..5)
  )
end

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data
50.times do 
  Student.create(
    name: Faker::Name.name, 
    age:(18..100), 
    cohort_id:rand(1..10)
    )
end

puts "Done!"