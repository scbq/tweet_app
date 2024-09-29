# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Limpiar la base de datos (opcional, si quieres eliminar los tweets anteriores)
Tweet.destroy_all

# Crear tweets automáticos
50.times do
  Tweet.create(
    description: Faker::Lorem.sentence(word_count: 10),  # Genera una frase aleatoria
    username: Faker::Internet.username(specifier: 5..10) # Genera un nombre de usuario aleatorio
  )
end

