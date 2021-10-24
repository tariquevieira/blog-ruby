# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Populando banco de dados'
author1 = Author.create(first_name: 'Diego', last_name: 'vieira ramos')
author2 = Author.create(first_name: 'tuane', last_name: 'vieira ramos')
Address.create(street: 'Rua 1', author: author1)
Address.create(street: 'Rua 2', author: author2)