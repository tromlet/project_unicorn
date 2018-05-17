# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  descStr = ""
  typeStr = ""
  def set_type
    selector = rand(3)
    typeStr << "Front" if selector == 0
    typeStr << "Back" if selector == 1
    typeStr << "Design" if selector == 2
  end

  5.times do
    descStr << Faker::RickAndMorty.quote + ", "
    descStr << "\n\n"
  end
  project = Project.new({
    title: Faker::Overwatch.hero,
    url: nil,
    description: descStr,
    img_url: Faker::Fillmurray.image,
    type: typeStr
    })
  project.save!
end
