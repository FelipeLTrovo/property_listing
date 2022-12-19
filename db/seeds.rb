# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
50.times do
  x = Property.create!(name: Faker::Address.full_address)
  2..6.times do
    x.photos.attach(io: File.open((Dir.glob('app/assets/images/real_state/*.jpg').sample)), filename: 'photo.jpg')
    x.save!
  end
end