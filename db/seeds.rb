# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Broth.create([
  {
    name: 'Salt',
    description: 'Simple like the seawater, nothing more',
    price: 10,
    image_active: 'https://tech.redventures.com.br/icons/salt/active.svg',
    image_inactive: 'https://tech.redventures.com.br/icons/salt/inactive.svg'
  }
])

Protein.create([
  {
    name: 'Chasu',
    description: 'A sliced flavourful pork meat with a selection of season vegetables.',
    price: 10,
    image_active: 'https://tech.redventures.com.br/icons/chicken/active.svg',
    image_inactive: 'https://tech.redventures.com.br/icons/chicken/inactive.svg'
  }
])