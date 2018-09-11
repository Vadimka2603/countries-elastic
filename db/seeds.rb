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

[ { title: 'Москва', country: Country.find_by(title: 'Россия'), capacity: rand(1_000..3_000_000), description: 'Столица России' },
  { title: 'Сеул', country: Country.find_by(title: 'Южная Корея'), capacity: rand(1_000..3_000_000), description: 'Столица Южной Кореи' },
  { title: 'Пхеньян', country: Country.find_by(title: 'Северная Корея'), capacity: rand(1_000..3_000_000), description: 'Столица Северной Кореи' },
  { title: 'Тверь', country: Country.find_by(title: 'Россия'), capacity: rand(1_000..3_000_000), description: 'Город в России' },
  { title: 'Бостон', country: Country.find_by(title: 'США'), capacity: rand(1_000..3_000_000), description: 'Город в США' },
  { title: 'Токио', country: Country.find_by(title: 'Япония'), capacity: rand(1_000..3_000_000), description: 'Столица Японии' },
  { title: 'Мухосранск', country: Country.find_by(title: 'Россия'), capacity: 5_000, description: 'Деревня в России' },
  { title: 'Киото', country: Country.find_by(title: 'Япония'), capacity: rand(1_000..3_000_000), description: 'Город в Японии' },
  { title: 'Милан', country: Country.find_by(title: 'Италия'), capacity: rand(1_000..3_000_000), description: 'Город в Италии' },
  { title: 'Пекин', country: Country.find_by(title: 'Китай'), capacity: rand(1_000..3_000_000), description: 'Столица Китая' } ].each do |city|
    City.find_or_create_by(title: city[:title], country: city[:country], capacity: city[:capacity], description: city[:description])
  end 

