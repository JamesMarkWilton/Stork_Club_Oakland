# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
dates = ["2012_05_02",
"2012_05_08",
"2012_05_09",
"2012_05_10",
"2012_05_11",
"2012_05_12",
"2012_05_15",
"2012_05_16",
"2012_05_17",
"2012_05_18",
"2012_05_19",
"2012_05_22",
"2012_05_24",
"2012_05_25",
"2012_05_26",
"2012_05_29",
"2012_05_30",
"2012_06_06",
"2012_06_07",
"2012_06_08",
"2012_06_09",
"2012_06_14",
"2012_06_15",
"2012_06_19",
"2012_06_20",
"2012_06_22",
"2012_06_23",
"2012_06_26",
"2012_06_27",
"2012_06_28",
"2012_06_29"
]

dates.each do |date|
  Booking.create date: "#{date.gsub "_", "-"}"
  booking = Booking.last
  booking.flyers.create file_path: "flyers/flyer_#{date}.jpg"
end
