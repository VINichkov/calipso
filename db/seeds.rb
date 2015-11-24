# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "__Add City"

if City.find_by_alias('Omsk').nil? then
  City.create alias:'Omsk', name: 'Омск'
  puts "Added City"
else
  puts 'Exeption:City already present in the table!!!'
end

puts "__Add options"

if Propert.find_by_code('name_site').nil? then
  Propert.create code:'name_site', name:'Name this site', value:'Calipso'
  puts "Added option"
else
  puts 'Exeption: Option name_site already present in the table!!!'
end
if Propert.find_by_code('name_company').nil? then
  Propert.create code:'name_company', name:'Company name', value:'RIO inc.'
  puts "Added option"
else
  puts 'Exeption: Option name_company already present in the table!!!'
end
