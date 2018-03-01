# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Alarm.create([{ active: false, time: '10:45 PM', itemized: false, localized: false },
              { active: true, time: '12:00 AM', itemized: true, localized: false },
              { active: true, time: '1:00 AM', itemized: false, localized: true }])

ItineraryItem.create([{ name: 'Brush Teeth', time: 10, time_unit: 0 },
                      { name: 'Shower', time: 15, time_unit: 0 },
                      { name: 'Do Hair', time: 1, time_unit: 1 }])
