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

Event.create(:cost => 400.0, :from_landmark => "SM Southmall", :passenger_limit => 4, :plate => "WBYXXX", :to_landmark => "Metropoint", :kind => 1, :user_id => 2, :vehicle => "Toyota MRs", :when => DateTime.civil(2012,4,28,23,0,0))
Route.create(:city_id => 2, :event_id => 1, :kind => 0)
Route.create(:city_id => 7, :event_id => 1, :kind => 1)

Event.create(:cost => 250.0, :from_landmark => "", :passenger_limit => 4, :plate => "RSG983", :to_landmark => "Chatham Bldg", :kind => 0, :user_id => 4, :vehicle => "", :when => DateTime.civil(2012,4,29,10,0,0))
Route.create(:city_id => 7, :event_id => 2, :kind => 0)
Route.create(:city_id => 3, :event_id => 2, :kind => 1)

Event.create(:cost => 350.0, :from_landmark => "South Station", :passenger_limit => 3, :plate => "YTD738", :to_landmark => "Ayala CBD", :kind => 5, :user_id => 1, :vehicle => "Blue Nissan Frontier", :when => DateTime.civil(2012,4,30,15,0,0))
Route.create(:city_id => 8, :event_id => 3, :kind => 0)
Route.create(:city_id => 3, :event_id => 3, :kind => 1)

Event.create(:cost => 100.0, :from_landmark => "MOA", :passenger_limit => 3, :plate => "YTD738", :to_landmark => "Enterprise", :kind => 5, :user_id => 2, :vehicle => "Isuzu Crosswind 2011", :when => DateTime.civil(2012,4,30,8,0,0))
Route.create(:city_id => 11, :event_id => 3, :kind => 0)
Route.create(:city_id => 3, :event_id => 3, :kind => 1)

Passenger.create(:event_id => 1, :user_id => 1)
Passenger.create(:event_id => 1, :user_id => 7)

Passenger.create(:event_id => 3, :user_id => 6)

Invitation.create(:event_id => 1, :kind => 1, :user_id => 5)
Invitation.create(:event_id => 2, :kind => 0, :user_id => 1)
Invitation.create(:event_id => 3, :kind => 1, :user_id => 5)
Invitation.create(:event_id => 1, :kind => 0, :user_id => 5)

  













