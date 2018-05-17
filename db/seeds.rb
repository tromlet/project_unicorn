# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  5.times do
    newStr = ""
    newStr << Faker::RickAndMorty.quote + ", "
    newStr << "\n\n"
  end
  project = Project.new({
    name: Faker::Overwatch.hero,
    url: nil,
    description: ,
    img_url: Faker::Fillmurray.image,
    type:
    })
end
