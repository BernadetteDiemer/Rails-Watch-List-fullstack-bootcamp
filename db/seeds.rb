require 'faker'

Movie.delete_all
puts "Cleaned the database"


10.times do
  new_movie = Movie.create(title: Faker::Emotion.noun, overview: " A very #{Faker::Emotion.adjective} movie!", poster_url: Faker::Internet.url, rating: rand(0..10))

  puts "#{new_movie.title} has been created"
end

puts "Done with seeding"
