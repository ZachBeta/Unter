# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Development Drivers
Driver.destroy_all
[
  { # Central point of NHV
    lat: 41.3083,
    lng: -72.9279,
    available: true,
  },{ # Near East Rock Park
    lat: 41.324668,
    lng: -72.9123427,
    available: true,
  },{ # SOM
    lat: 41.3154237,
    lng: -72.9209239,
    available: true,
  }
].each do |attrs|
  Driver.create(attrs)
end
