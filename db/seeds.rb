# encoding: utf-8

[ { title: 'Россия', continent: 'Европа' },
  { title: 'Австрия', continent: 'Европа' },
  { title: 'Аргентина', continent: 'Южная Америка' },
  { title: 'Бразилия', continent: 'Южная Америка' },
  { title: 'Великобритания', continent: 'Европа' },
  { title: 'Германия', continent: 'Европа' },
  { title: 'Испания', continent: 'Европа' },
  { title: 'Италия', continent: 'Европа' },
  { title: 'Канада', continent: 'Северная Америка' },
  { title: 'Китай', continent: 'Азия' },
  { title: 'Северная Корея', continent: 'Азия' },
  { title: 'Мексика', continent: 'Северная Америка' },
  { title: 'США', continent: 'Северная Америка' },
  { title: 'Туркс и Кейкос', continent: 'Южная Америка' },
  { title: 'Узбекистан', continent: 'Азия' },
  { title: 'Южная Корея', continent: 'Азия' },
  { title: 'Япония', continent: 'Азия' }].each do |country|
    Country.find_or_create_by(title: country[:title], continent: country[:continent])
  end


