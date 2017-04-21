data = [["Joe and Rika Mansueto Library","http://d3qi0qp55mx5f5.cloudfront.net/architecture/i/locations/large_images/KJwWW_other_large.jpg", "The Mansueto Library can hold the equivalent of 3.5 million volumes through its automated storage and retrieval system. Mansueto's design reflects Regenstein Library next door, as well as Mitchell Tower beyond. Though Mansueto's glass dome structure creates a sense of permeability between the indoors and the outdoors, it is closely temperature controlled, staying cool in the hot summers and warm in the cold winters."],
		["International House","http://d3qi0qp55mx5f5.cloudfront.net/architecture/i/locations/large_images/IHOUSE_large.jpg","John D. Rockefeller Jr. established International House as a residence for international students. International House has recently completed a multi-year, $30 million restoration which has modernized resident and guest accommodations as well as updated meeting, conference and public event spaces will serve future generations of students, scholars and the community."],
	    ["Gerald Ratner Athletics Center","http://d3qi0qp55mx5f5.cloudfront.net/architecture/i/locations/large_images/RATNER_large.jpg","John D. Rockefeller Jr. established International House as a residence for international students. The Gerald Ratner Athletics Center's exterior is often described as a ship-like structure."]]

Place.delete_all

data.each do |d|
	f = Place.new
	f.title = d[0]
	f.photo = d[1]
	f.description = d[2]
	f.save
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
