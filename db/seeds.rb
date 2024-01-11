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
Department.create!(name: 'Home')
Department.create!(name: 'Electronics')
Department.create!(name: 'Computers and Accessories')
Department.create!(name: 'Commerce')
Department.create!(name: 'Leisure and Entertainment')
Department.create!(name: 'Automotive')
Department.create!(name: 'Toys')
Department.create!(name: 'Sports')
Department.create!(name: 'Health and Wellness')
Department.create!(name: 'Fashion and Beauty')
Category.create!(name: 'luz externa', department_id: 1)
Category.create!(name: 'luz interna', department_id: 1)
Category.create!(name: 'luz sala', department_id: 1)
Category.create!(name: 'luz cozinha', department_id: 1)
Category.create!(name: 'luz banheiro', department_id: 1)
Category.create!(name: 'luz quarto', department_id: 1)
Category.create!(name: 'luz piscina', department_id: 1)
Category.create!(name: 'luz neutra', department_id: 1)
Category.create!(name: 'brinquedo masc', department_id: 6)
Category.create!(name: 'brinquedo fem', department_id: 6)
Category.create!(name: 'brinquedo neutro', department_id: 6)
Category.create!(name: 'brinquedo online', department_id: 6)
