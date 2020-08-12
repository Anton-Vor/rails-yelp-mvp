puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 658293211, category: "italian" }
chezAnton = { name: "ChezAnton", address: "St, London Go Go Go GO", phone_number: 658292323, category: "french" }
chezAlan = { name: "ChezAlan", address: "St, London Go Go Go GO", phone_number: 658292323, category: "japanese" }
chezThomas = { name: "ChezThomas", address: "St, London Go Go Go GO", phone_number: 658292323, category: "chinese" }
chezMael = { name: "ChezMaels", address: "St, London Go Go Go GO", phone_number: 658292323, category: "belgian" }

[ dishoom, chezAnton, chezAlan, chezThomas, chezMael ].each do |attributes|
  p attributes
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
