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
  bill = 1

  def set_type
    selector = rand(3)
    if selector == 0
      typeStr << "Front"
    elsif selector == 1
      typeStr << "Back"
    elsif selector == 2
      typeStr << "Design"
    end
  end

  5.times do
    descStr << Faker::RickAndMorty.quote + ", "
    descStr << "\n\n"
  end

  project = Project.new({
    title: Faker::Overwatch.hero,
    url: nil,
    description: descStr,
    img_url: Faker::Fillmurray.image(true, 200, (rand(10) * 100)),
    type: typeStr
    })
  project.save!
end
