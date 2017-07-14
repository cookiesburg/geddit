# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


21.times do 
    User.create!(username: Faker::Internet.user_name,
    email: Faker::Internet.email)
end

28.times do
    Subreddit.create!(title: Faker::Hipster.words,
    description: Faker::Simpsons.quote)
end

300.times do
    Post.create!(title: Faker::Hipster.word,
    user_id: rand(21)+1,
    body: Faker::Hipster.sentence,
    subreddit_id: rand(21)+1)
end

220.times do
    Comment.create!(text: Faker::Hipster.sentence,
    user_id: rand(21)+1,
    post_id: rand(300)+1,)
end

p 'seeded'

