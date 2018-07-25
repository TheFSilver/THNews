# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Creation du Message Board
messageboard = MessageBoard.create(name: "The Hacker News")

Creation de 27 users et de quelques liens pour chaque user
27.times do
  user = User.create(name: Faker::GreekPhilosophers.name)
  rand(1..3).times do
    link = Link.create(address: Faker::Internet.url, user_id: user.id, messageboard_id: messageboard.id)
    
    rand(0..2).times do
      comment = Comment.create(content: Faker::Lorem.sentences(1), link_id: link.id)
    end
  end
end





