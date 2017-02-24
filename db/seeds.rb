# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all



stark = House.create(name: "House stark")
lannister = House.create(name: "House lannister")


Character.create(name: "Jamie", house: lannister)
Character.create(name: "Tyrion", house: lannister)

Character.create(name: "John", house:  stark)
Character.create(name: "Robb", house:  stark)
