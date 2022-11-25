require 'faker'
require 'open-uri'
Reviewtable.destroy_all
Booking.destroy_all
Butler.destroy_all

40.times do |i|
  butler = Butler.new
  butler.gender = %w[male female].sample

  if butler.gender == "female"
    butler.first_name = Faker::Name.female_first_name
    file = URI.open("https://xsgames.co/randomusers/assets/avatars/female/2.jpg")
    butler.photo.attach(io: file, filename: "female.jpg", content_type: "image/jpg")
  else
    file = URI.open("https://xsgames.co/randomusers/assets/avatars/male/#{i}.jpg")
    butler.first_name = Faker::Name.male_first_name
    butler.photo.attach(io: file, filename: "male.jpg", content_type: "image/jpg")
  end
  butler.last_name = Faker::Name.last_name
  butler.email = "#{butler.first_name}.#{butler.last_name}@gmail.Com"
  butler.address = Faker::Address.state
  butler.category = %w[cleaning cooking fun relationship talks].sample
  butler.description = Faker::Quote.famous_last_words
  butler.price = (80..200).to_a.sample

  butler.save
end
