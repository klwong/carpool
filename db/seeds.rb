# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(:name => "Carlos Samuel Gavino", :uid => "100000673213444", :provider => "facebook")
User.create(:name => "Kimson Wong", :uid => "606210226", :provider => "facebook")
User.create(:name => "Joseph Josue", :uid => "637221924", :provider => "facebook")
User.create(:name => "Angelica Valdez", :uid => "613804658", :provider => "facebook")
User.create(:name => "Mark Conde", :uid => "100001181779398", :provider => "facebook")
User.create(:name => "Anderson Aldrich", :uid => "1048920007", :provider => "facebook")
User.create(:name => "Anne Gabrielle Peralta", :uid => "620974576", :provider => "facebook")

City.create(:name => "Caloocan")
City.create(:name => "Las Pinas")
City.create(:name => "Makati City")
City.create(:name => "Malabon")
City.create(:name => "Mandaluyong")
City.create(:name => "Manila")
City.create(:name => "Marikina")
City.create(:name => "Muntinlupa")
City.create(:name => "Navotas")
City.create(:name => "Paranaque")
City.create(:name => "Pasay")
City.create(:name => "Pasig")
City.create(:name => "Pateros")
City.create(:name => "Quezon City")

# Kind 1 is equal to Driver
#      0 is equal to Passenger

# Event id#1
Event.create(:cost => 400.0, :from_landmark => "SM Southmall", :passenger_limit => 4, :plate => "WBYXXX", :to_landmark => "Metropoint", :kind => 1, :user_id => 2, :vehicle => "Toyota MRs", :when => DateTime.civil(2012,4,28,23,0,0))
Route.create(:city_id => 2, :event_id => 1, :kind => 0)
Route.create(:city_id => 7, :event_id => 1, :kind => 1)

# Event id#2
Event.create(:cost => 250.0, :from_landmark => "", :passenger_limit => 4, :plate => "", :to_landmark => "Chatham Bldg", :kind => 0, :user_id => 4, :vehicle => "", :when => DateTime.civil(2012,4,29,10,0,0))
Route.create(:city_id => 7, :event_id => 2, :kind => 0)
Route.create(:city_id => 3, :event_id => 2, :kind => 1)

# Event id#3
Event.create(:cost => 350.0, :from_landmark => "South Station", :passenger_limit => 3, :plate => "YTD738", :to_landmark => "Ayala CBD", :kind => 1, :user_id => 1, :vehicle => "Blue Nissan Frontier", :when => DateTime.civil(2012,4,30,15,0,0))
Route.create(:city_id => 8, :event_id => 3, :kind => 0)
Route.create(:city_id => 3, :event_id => 3, :kind => 1)

# Event id#4
Event.create(:cost => 100.0, :from_landmark => "MOA", :passenger_limit => 3, :plate => "VAN737", :to_landmark => "Enterprise", :kind => 1, :user_id => 2, :vehicle => "Isuzu Crosswind 2011", :when => DateTime.civil(2012,4,30,8,0,0))
Route.create(:city_id => 11, :event_id => 4, :kind => 0)
Route.create(:city_id => 3, :event_id => 4, :kind => 1)

# Event id#5
Event.create(
  :cost => 120,
  :from_landmark => "Rizal Park",
  :passenger_limit => 2,
  :plate => "TTE358",
  :to_landmark => "Valle Verde",
  :kind => 1,
  :user_id => 1,
  :vehicle => "Volkswagen Beetle",
  :when => DateTime.civil(2012, 4, 30, 12, 0, 0)
)

# Manila
Route.create(
  :city_id => 6,
  :event_id => 5,
  :kind => 0
)

# Pasig
Route.create(
  :city_id => 12,
  :event_id => 5,
  :kind => 1
)

# Event id#6
# Carlos
Event.create(
  :cost => 50,
  :from_landmark => "Bilibid (sa loob)",
  :passenger_limit => 2,
  :plate => "FUK421",
  :to_landmark => "Afters Desserts",
  :kind => 1,
  :user_id => 2,
  :vehicle => "",
  :when => DateTime.civil(2012, 4, 29, 10, 0, 0)
)

# Muntinlupa
Route.create(
  :city_id => 8,
  :event_id => 6,
  :kind => 0
)

# Quezon City
Route.create(
  :city_id => 14,
  :event_id => 6,
  :kind => 1
)

# Event id#7
# Carlos
Event.create(
  :cost => 50,
  :from_landmark => "SM Malabon",
  :passenger_limit => 2,
  :plate => "JON312",
  :to_landmark => "SM Caloocan",
  :kind => 1,
  :user_id => 2,
  :vehicle => "Dodge Charger",
  :when => DateTime.civil(2012, 4, 29, 10, 0, 0)
)

# Malabon
Route.create(
  :city_id => 4,
  :event_id => 7,
  :kind => 0
)

# Caloocan
Route.create(
  :city_id => 1,
  :event_id => 7,
  :kind => 1
)

# Event id#8
# Joseph
Event.create(
  :cost => 150,
  :from_landmark => "SM Caloocan",
  :passenger_limit => 2,
  :plate => "HEH321",
  :to_landmark => "SM Makati",
  :kind => 1,
  :user_id => 3,
  :vehicle => "Volvo",
  :when => DateTime.civil(2012, 4, 29, 10, 0, 0)
)

# Caloocan
Route.create(
  :city_id => 1,
  :event_id => 8,
  :kind => 0
)

# Makati
Route.create(
  :city_id => 3,
  :event_id => 8,
  :kind => 1
)

# Event id#9
# Angelica
Event.create(
  :cost => 50,
  :from_landmark => "SM Quezon City",
  :passenger_limit => 2,
  :plate => "BBK123",
  :to_landmark => "SM Makati",
  :kind => 1,
  :user_id => 4,
  :vehicle => "Nissan Versa",
  :when => DateTime.civil(2012, 4, 29, 10, 0, 0)
)

# Quezon City
Route.create(
  :city_id => 14,
  :event_id => 9,
  :kind => 0
)

# Makati
Route.create(
  :city_id => 0,
  :event_id => 9,
  :kind => 1
)

Passenger.create(:event_id => 1, :user_id => 1)
Passenger.create(:event_id => 1, :user_id => 7)

Passenger.create(:event_id => 3, :user_id => 6)

Invitation.create(:event_id => 1, :kind => 1, :user_id => 5)
Invitation.create(:event_id => 2, :kind => 0, :user_id => 1)
Invitation.create(:event_id => 3, :kind => 1, :user_id => 5)
Invitation.create(:event_id => 1, :kind => 0, :user_id => 5)

  













