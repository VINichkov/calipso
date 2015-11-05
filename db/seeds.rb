# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Заполнение таблицы Города"

if City.find_by_alias('Omsk').nil? then
  City.create alias:'Omsk', name: 'Омск'
else
  puts 'Город уже есть'
end
