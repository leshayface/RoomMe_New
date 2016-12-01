# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# room_one = Room.create(title: 'Room One', description: "Blah BLah")
# room_two = Room.create(title: 'RoomoTwo', description: "Blah BLeh")
# ['cape town', 'joburg'].each do |rc|
# 	Location.create(city: rc, room_id: room_one.id)
#   # room_one.location.create(city: rc)
# end
# ['cape town', 'joburg', 'durban'].each do |rc|
#   Location.create(city: rc, room_id: room_two.id)
# end

# HouseRule.create( name: 'Families & children accepted' )
# HouseRule.create( name: 'Couples accepted' )
# HouseRule.create( name: 'Pets allowed' )
# HouseRule.create( name: 'Smoking inside the property allowed' )

RoomAmenity.create( name: 'TV' )
RoomAmenity.create( name: 'Wifi' )
RoomAmenity.create( name: 'Parking' )
RoomAmenity.create( name: 'Garden' )
RoomAmenity.create( name: 'Terrace/ Balcony' )
RoomAmenity.create( name: 'Security' )
RoomAmenity.create( name: 'Elevator' )