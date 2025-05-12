# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#Fill these out with the correct recipe details

#Clean database before running seed file
puts "Cleaning database..."
Recipe.destroy_all

puts "Creating new recipes..."
Recipe.create!(name: "Spaghetti all Carbonara",
              description: "Carbonara is made with guanciale (cured pork), eggs, Pecorino Romano cheese, spaghetti pasta, and lots of black pepper.",
              image_url: "https://www.allrecipes.com/thmb/InzCzO3OWS1inqCRU3AJhv33fhg=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/245775-spaghetti-alla-carbonara-the-traditional-italian-recipe-DDMFS-4x3-879c32ee3cfb463582e3e6230e311029.jpg",
              rating: 4.5)
Recipe.create!(name: "Braised Pork Ragu",
               description: "A perfect make-ahead dish that is served best over Parmesan risotto, but is also great over pasta or potatoes!",
               image_url: "https://www.allrecipes.com/thmb/vKYnmmp7zZLj_N5M-iS0HKCzAhg=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/7983282-braised-pork-ragu-Sugea-4x3-1-168586ca15524e15a7012009776e2235.jpg",
               rating: 4.2)
Recipe.create!(name: "Lasagne Verdi al Forno",
               description: "This lasagne verde made with spinach pasta cannot be beaten.",
                image_url: "https://www.allrecipes.com/thmb/NZiIlIWZvNJlhqyYvspUr7s9UjM=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/421809-686b67e690ae4a40a9e8d588ea692c3c.jpg",
                rating: 4.1)

puts "#{Recipe.count} recipes created"
