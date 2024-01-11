# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Department.create!(name: 'home')
Department.create!(name: 'electronics')
Department.create!(name: 'computers_and_accessories')
Department.create!(name: 'commerce')
Department.create!(name: 'leisure_and_entertainment')
Department.create!(name: 'toys')
Department.create!(name: 'sports')
Department.create!(name: 'health_and_wellness')
Department.create!(name: 'fashion_and_beauty')
