# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'date'

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

def random_number
  number = rand(1..120)-20
  # if number < 1 then number = nil
  number < 1  ? number = "" : number = number
end

3.times do |t|
  # make data for 3 child health week events in past 18 months

  random_day  = rand(1..30)
  user_id = rand(1..120)
  site_id = rand(1..120)
  vitamin_a_red_prog = rand(1..120)-20
  vitamin_a_blue_prog = rand(1..120)-20
  deworming_prog = rand(1..120)-20
  iron_folate_prog = rand(1..120)-20

  Rrogram_report.create(user_id: user_id,
                        site_id: site_id,
                        report_date: Date.new(2015,06,random_day),
                        vitamin_a_red: vitamin_a_red,
                        vitamin_a_blue: vitamin_a_blue,
                        deworming: deworming,
                        iron_folate: iron_folate)

  Stock_report.create(user_id: user_id,
                        site_id: site_id,
                        report_date: Date.new(2015,06,random_day),
                        vitamin_a_red: vitamin_a_red,
                        vitamin_a_blue: vitamin_a_blue,
                        deworming: deworming,
                        iron_folate: iron_folate)

#   end
end

# Night.create(castle_id: 1, not_available: Date.new(2015,06,rand(1..30)))

# Program Reports
#     "user_id"
#     "site_id"
#     "report_date"
#     "vitamin_a_red"
#     "vitamin_a_blue"
#     "deworming"
#     "iron_folate"

# Stock Reports
#     "user_id"
#     "site_id"
#     "vitamin_a_red"
#     "vitamin_a_blue"
#     "deworming"
#     "iron_folate"
#     "created_at",
#     "updated_at",
