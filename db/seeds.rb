# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

list_provinces =[
  [1 , "Bubanza"],
  [2 , "Bujumbura Rural"],
  [3 , "Bururi"],
  [4 , "Cankuzo"],
  [5 , "Cibitoke"],
  [6 , "Gitega"],
  [7 , "Karuzi"],
  [8 , "Kayanza"],
  [9 , "Kirundo"],
  [10  , "Makamba"],
  [11  , "Muramvya"],
  [12  , "Muyinga"],
  [13  , "Mwaro"],
  [14  , "Ngozi"],
  [15  , "Rumonge"],
  [16  , "Rutana"],
  [17  , "Ruyigi"],
  [18  , "Mairie de Bujumbura"],
]

list_provinces.each do |id, province_name|
  State.create(id: id, state_name: province_name)
end

# require 'date'

# 3.times do |t|
#   Castle.all.each do |castle|
#     random_day  = Random.new.rand(1..30)
#     Night.create(castle_id: castle.id, not_available: Date.new(2015,06,random_day))
#   end
# end

# Night.create(castle_id: 1, not_available: Date.new(2015,06,rand(1..30)))
