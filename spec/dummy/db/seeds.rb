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
city_1      = City.create(name: "Bilbao", state: state_1, province: province_2)