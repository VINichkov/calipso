# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "__Add City"

City.create alias: 'Omsk', name: 'Омск' if City.find_by_alias('Omsk').nil?

puts "__Add options"

Propert.create code: 'name_site', name: 'Name this site', value: 'Calipso' if Propert.find_by_code('name_site').nil?
Propert.create code: 'name_company', name: 'Company name', value: 'RIO inc.' if Propert.find_by_code('name_company').nil?
Propert.create code: 'host_name', name: 'host', value: 'localhost' if Propert.find_by_code('host_name').nil?
Propert.create code: 'port_namber', name: 'port', value: '3000' if Propert.find_by_code('port_namber').nil?

puts "__Add Rubrics"
Rubric.create name: 'Любая категория', nambe: '1' if Rubric.find_by_nambe("1").nil?
  Rubric.create name: 'Транспорт', nambe: '1.1', rubric_id: Rubric.find_by_nambe("1").id if Rubric.find_by_nambe("1.1").nil?
    Rubric.create name: 'Автомобили', nambe: '1.1.1', rubric_id: Rubric.find_by_nambe("1.1").id if Rubric.find_by_nambe("1.1.1").nil?
    Rubric.create name: 'Мотоциклы и мототехника', nambe: '1.1.2', rubric_id: Rubric.find_by_nambe("1.1").id if Rubric.find_by_nambe("1.1.2").nil?
    Rubric.create name: 'Грузовики и спецтехника', nambe: '1.1.3', rubric_id: Rubric.find_by_nambe("1.1").id if Rubric.find_by_nambe("1.1.3").nil?
    Rubric.create name: 'Водный транспорт', nambe: '1.1.3', rubric_id: Rubric.find_by_nambe("1.1").id if Rubric.find_by_nambe("1.1.3").nil?
    Rubric.create name: 'Запчасти и аксессуары', nambe: '1.1.5', rubric_id: Rubric.find_by_nambe("1.1").id if Rubric.find_by_nambe("1.1.5").nil?

  Rubric.create name: 'Недвижимость', nambe: '2.1', rubric_id: Rubric.find_by_nambe("1").id if Rubric.find_by_nambe("2.1").nil?
    Rubric.create name: 'Квартиры', nambe: '2.1.1', rubric_id: Rubric.find_by_nambe("2.1").id if Rubric.find_by_nambe("2.1.1").nil?
    Rubric.create name: 'Комнаты', nambe: '2.1.2', rubric_id: Rubric.find_by_nambe("2.1").id if Rubric.find_by_nambe("2.1.2").nil?
    Rubric.create name: 'Дома, дачи, коттеджи', nambe: '2.1.3', rubric_id: Rubric.find_by_nambe("2.1").id if Rubric.find_by_nambe("2.1.3").nil?
    Rubric.create name: 'Земельные участки', nambe: '2.1.3', rubric_id: Rubric.find_by_nambe("2.1").id if Rubric.find_by_nambe("2.1.3").nil?
    Rubric.create name: 'Гаражи и машиноместа', nambe: '2.1.5', rubric_id: Rubric.find_by_nambe("2.1").id if Rubric.find_by_nambe("2.1.5").nil?
    Rubric.create name: 'Коммерческая недвижимость', nambe: '2.1.6', rubric_id: Rubric.find_by_nambe("2.1").id if Rubric.find_by_nambe("2.1.6").nil?
    Rubric.create name: 'Недвижимость за рубежом', nambe: '2.1.7', rubric_id: Rubric.find_by_nambe("2.1").id if Rubric.find_by_nambe("2.1.7").nil?

  Rubric.create name: 'Работа', nambe: '3.1', rubric_id: Rubric.find_by_nambe("1").id if Rubric.find_by_nambe("3.1").nil?
    Rubric.create name: 'Резюме', nambe: '3.1.1', rubric_id: Rubric.find_by_nambe("3.1").id if Rubric.find_by_nambe("3.1.1").nil?
    Rubric.create name: 'Вакансии', nambe: '3.1.2', rubric_id: Rubric.find_by_nambe("3.1").id if Rubric.find_by_nambe("3.1.2").nil?

  Rubric.create name: 'Услуги', nambe: '4.1', rubric_id: Rubric.find_by_nambe("1").id if Rubric.find_by_nambe("4.1").nil?
    Rubric.create name: 'Предложения услуг', nambe: '4.1.1', rubric_id: Rubric.find_by_nambe("4.1").id if Rubric.find_by_nambe("4.1.1").nil?
    Rubric.create name: 'Запросы на услуги', nambe: '4.1.2', rubric_id: Rubric.find_by_nambe("4.1").id if Rubric.find_by_nambe("4.1.2").nil?

  Rubric.create name: 'Личные вещи', nambe: '5.1', rubric_id: Rubric.find_by_nambe("1").id if Rubric.find_by_nambe("5.1").nil?
    Rubric.create name: 'Одежда, обувь, аксессуары', nambe: '5.1.1', rubric_id: Rubric.find_by_nambe("5.1").id if Rubric.find_by_nambe("5.1.1").nil?
    Rubric.create name: 'Детская одежда и обувь', nambe: '5.1.2', rubric_id: Rubric.find_by_nambe("5.1").id if Rubric.find_by_nambe("5.1.2").nil?
    Rubric.create name: 'Товары для детей и игрушки', nambe: '5.1.3', rubric_id: Rubric.find_by_nambe("5.1").id if Rubric.find_by_nambe("5.1.3").nil?
    Rubric.create name: 'Часы и украшения', nambe: '5.1.3', rubric_id: Rubric.find_by_nambe("5.1").id if Rubric.find_by_nambe("5.1.3").nil?
    Rubric.create name: ' Красота и здоровье', nambe: '5.1.5', rubric_id: Rubric.find_by_nambe("5.1").id if Rubric.find_by_nambe("5.1.5").nil?

  Rubric.create name: 'Для дома и дачи', nambe: '6.1', rubric_id: Rubric.find_by_nambe("1").id if Rubric.find_by_nambe("6.1").nil?
    Rubric.create name: 'Бытовая техника', nambe: '6.1.1', rubric_id: Rubric.find_by_nambe("6.1").id if Rubric.find_by_nambe("6.1.1").nil?
    Rubric.create name: 'Мебель и интерьер', nambe: '6.1.2', rubric_id: Rubric.find_by_nambe("6.1").id if Rubric.find_by_nambe("6.1.2").nil?
    Rubric.create name: 'Посуда и товары для кухни', nambe: '6.1.3', rubric_id: Rubric.find_by_nambe("6.1").id if Rubric.find_by_nambe("6.1.3").nil?
    Rubric.create name: 'Продукты питания', nambe: '6.1.3', rubric_id: Rubric.find_by_nambe("6.1").id if Rubric.find_by_nambe("6.1.3").nil?
    Rubric.create name: 'Ремонт и строительство', nambe: '6.1.5', rubric_id: Rubric.find_by_nambe("6.1").id if Rubric.find_by_nambe("6.1.5").nil?
    Rubric.create name: 'Растения', nambe: '6.1.6', rubric_id: Rubric.find_by_nambe("6.1").id if Rubric.find_by_nambe("6.1.6").nil?

  Rubric.create name: 'Бытовая техника', nambe: '7.1', rubric_id: Rubric.find_by_nambe("1").id if Rubric.find_by_nambe("7.1").nil?
    Rubric.create name: 'Аудио и видео', nambe: '7.1.1', rubric_id: Rubric.find_by_nambe("7.1").id if Rubric.find_by_nambe("7.1.1").nil?
    Rubric.create name: 'Игры, приставки и программы', nambe: '7.1.2', rubric_id: Rubric.find_by_nambe("7.1").id if Rubric.find_by_nambe("7.1.2").nil?
    Rubric.create name: 'Настольные компьютеры', nambe: '7.1.3', rubric_id: Rubric.find_by_nambe("7.1").id if Rubric.find_by_nambe("7.1.3").nil?
    Rubric.create name: 'Ноутбуки', nambe: '7.1.3', rubric_id: Rubric.find_by_nambe("7.1").id if Rubric.find_by_nambe("7.1.3").nil?
    Rubric.create name: 'Оргтехника и расходники', nambe: '7.1.5', rubric_id: Rubric.find_by_nambe("7.1").id if Rubric.find_by_nambe("7.1.5").nil?
    Rubric.create name: 'Планшеты и электронные книги', nambe: '7.1.6', rubric_id: Rubric.find_by_nambe("7.1").id if Rubric.find_by_nambe("7.1.6").nil?
    Rubric.create name: 'Телефоны', nambe: '7.1.7', rubric_id: Rubric.find_by_nambe("7.1").id if Rubric.find_by_nambe("7.1.7").nil?
    Rubric.create name: 'Товары для компьютера', nambe: '7.1.8', rubric_id: Rubric.find_by_nambe("7.1").id if Rubric.find_by_nambe("7.1.8").nil?
    Rubric.create name: 'Фототехника', nambe: '7.1.9', rubric_id: Rubric.find_by_nambe("7.1").id if Rubric.find_by_nambe("7.1.9").nil?

  Rubric.create name: 'Хобби и отдых', nambe: '8.1', rubric_id: Rubric.find_by_nambe("1").id if Rubric.find_by_nambe("8.1").nil?
    Rubric.create name: 'Билеты и путешествия', nambe: '8.1.1', rubric_id: Rubric.find_by_nambe("8.1").id if Rubric.find_by_nambe("8.1.1").nil?
    Rubric.create name: 'Велосипеды', nambe: '8.1.2', rubric_id: Rubric.find_by_nambe("8.1").id if Rubric.find_by_nambe("8.1.2").nil?
    Rubric.create name: 'Книги и журналы', nambe: '8.1.3', rubric_id: Rubric.find_by_nambe("8.1").id if Rubric.find_by_nambe("8.1.3").nil?
    Rubric.create name: 'Коллекционирование', nambe: '8.1.3', rubric_id: Rubric.find_by_nambe("8.1").id if Rubric.find_by_nambe("8.1.3").nil?
    Rubric.create name: 'Музыкальные инструменты', nambe: '8.1.5', rubric_id: Rubric.find_by_nambe("8.1").id if Rubric.find_by_nambe("8.1.5").nil?
    Rubric.create name: 'Охота и рыбалка', nambe: '8.1.6', rubric_id: Rubric.find_by_nambe("8.1").id if Rubric.find_by_nambe("8.1.6").nil?
    Rubric.create name: 'Спорт и отдых', nambe: '8.1.7', rubric_id: Rubric.find_by_nambe("8.1").id if Rubric.find_by_nambe("8.1.7").nil?


  Rubric.create name: 'Животные', nambe: '9.1', rubric_id: Rubric.find_by_nambe("1").id if Rubric.find_by_nambe("9.1").nil?
    Rubric.create name: 'Собаки', nambe: '9.1.1', rubric_id: Rubric.find_by_nambe("9.1").id if Rubric.find_by_nambe("9.1.1").nil?
    Rubric.create name: 'Кошки', nambe: '9.1.2', rubric_id: Rubric.find_by_nambe("9.1").id if Rubric.find_by_nambe("9.1.2").nil?
    Rubric.create name: 'Птицы', nambe: '9.1.3', rubric_id: Rubric.find_by_nambe("9.1").id if Rubric.find_by_nambe("9.1.3").nil?
    Rubric.create name: 'Аквариум', nambe: '9.1.3', rubric_id: Rubric.find_by_nambe("9.1").id if Rubric.find_by_nambe("9.1.3").nil?
    Rubric.create name: 'Другие животные', nambe: '9.1.5', rubric_id: Rubric.find_by_nambe("9.1").id if Rubric.find_by_nambe("9.1.5").nil?
    Rubric.create name: 'Товары для животных', nambe: '9.1.6', rubric_id: Rubric.find_by_nambe("9.1").id if Rubric.find_by_nambe("9.1.6").nil?

  Rubric.create name: 'Для бизнеса', nambe: '10.1', rubric_id: Rubric.find_by_nambe("1").id if Rubric.find_by_nambe("10.1").nil?
    Rubric.create name: 'Готовый бизнес', nambe: '10.1.1', rubric_id: Rubric.find_by_nambe("4.1").id if Rubric.find_by_nambe("10.1.1").nil?
    Rubric.create name: 'Оборудование для бизнеса', nambe: '10.1.2', rubric_id: Rubric.find_by_nambe("4.1").id if Rubric.find_by_nambe("10.1.2").nil?
