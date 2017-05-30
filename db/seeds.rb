# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)


if Rails.env.eql?("development")
  Spree::AuthenticationMethod.create(environment: "development", provider: "facebook", api_key: "311692455936768", api_secret: "b01173a5069169f47de2d409719af2ee", active: true)
else
  Spree::AuthenticationMethod.create(environment: "development", provider: "facebook", api_key: "311692455936768", api_secret: "b01173a5069169f47de2d409719af2ee", active: true)
end
