# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Creation du Message Board
mboard = Mboard.create(name: "The Hacker News")

# Creation de 27 users et de quelques liens pour chaque user
27.times do
  user = User.create(name: Faker::GreekPhilosophers.name)
  rand(1..3).times do
    link = Link.create(address: Faker::Internet.url, user_id: user.id, mboard_id: mboard.id)
    
    rand(0..2).times do
      comment = link.comments.create(body: Faker::Lorem.sentences(1), link_id: link.id, user_id: rand(User.first.id..User.last.id))
      rand(0..1).times do
        comment2 = comment.comments.create(body: Faker::Lorem.sentences(1), link_id: link.id, user_id: rand(User.first.id..User.last.id))
      end
    end
  end
end
