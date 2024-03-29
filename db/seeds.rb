# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(1..100).each do |i|
    Post.create(content: "this is a test content #{i}", user_id: rand(1..10))
end

(1..10).each do |i|
    User.create(email: "test#{i}@test.com",password: "test#{i}@test.com", password_confirmation: "test#{i}@test.com")
end