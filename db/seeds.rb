require 'faker'
Butler.destroy_all

40.times do |i|
  butler = Butler.new
  butler.gender = %w[male, female].sample

  if butler.gender == "female"
    butler.first_name = Faker::Name.female_first_name
    butler.url = "https://xsgames.co/randomusers/assets/avatars/female/#{i}.jpg"
  else
    butler.url = "https://xsgames.co/randomusers/assets/avatars/male/#{i}.jpg"
    butler.first_name = Faker::Name.male_first_name
  end
  butler.last_name = Faker::Name.last_name
  butler.email = "#{butler.first_name}.#{butler.last_name}@gmail.Com"
  butler.address = Faker::Address.state
  butler.category = %w[cleaning, cooking, fun, relationship, talks].sample
  butler.description = Faker::Quote.famous_last_words
  butler.price = (80..200).to_a.sample
  butler.rating = (1...5).to_a.sample

  butler.save
end
