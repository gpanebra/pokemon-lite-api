# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

puts "Seeding begins"

csv = CSV.read('db/pokemon-lite-api.csv', { headers: true, header_converters: :symbol })

csv.each do |row|
  
  pokemon = Pokemon.find_or_create_by(
    name: row[:name],
    base_experience: row[:base_exp],
    main_type: row[:main_type],
    main_ability: row[main_ability]
  )

  trainer = Trainer.find_or_create_by(
    name: row[:t_name],
    gender: row[:t_gender],
    age: 18,
    home_region: row[:t_region],
    team_member_status: row[:t_team_member],
    wins: row[:wins],
    losses: row[:losses]
  )

end

puts "Seeding ends"
