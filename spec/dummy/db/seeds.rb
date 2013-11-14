# encoding: UTF-8

Admin.create(email: "a@a.com", password: "1234567890")

# countries
country_1   = Country.create(name: "Spain")

# states
state_1     = State.create(name: "País Vasco", country: country_1)
state_2     = State.create(name: "Cataluña", country: country_1)

# provinces
province_1  = Province.create(name: "Araba/Álava", state: state_1)
province_2  = Province.create(name: "Bizkaia", state: state_1)
province_3  = Province.create(name: "Gipuzkoa", state: state_1)
province_4  = Province.create(name: "Lleida", state: state_2)

# cities
es_city_1      = EsCity.create(name: "Bilbao", state: state_1, province: province_2)

# postcodes
postcode_1  = Postcode.create(number: "48005", city: es_city_1)

# locations
location_1 = Location.create(street: "Gran Vía", number: "1A", postcode: postcode_1, city: es_city_1)