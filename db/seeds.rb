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
electronics = Department.create!(name: 'Electronics')
Department.create!(name: 'Computers and Accessories')
Department.create!(name: 'Commerce')
Department.create!(name: 'Leisure and Entertainment')
Department.create!(name: 'Automotive')
toys = Department.create!(name: 'Toys')
Department.create!(name: 'Sports')
Department.create!(name: 'Health and Wellness')
Department.create!(name: 'Fashion and Beauty')

Category.create!(name: 'luz externa', department_id: electronics.id)
Category.create!(name: 'luz interna', department_id: electronics.id)
Category.create!(name: 'luz sala', department_id: electronics.id)
Category.create!(name: 'luz cozinha', department_id: electronics.id)
Category.create!(name: 'luz banheiro', department_id: electronics.id)
Category.create!(name: 'luz quarto', department_id: electronics.id)
Category.create!(name: 'luz piscina', department_id: electronics.id)
Category.create!(name: 'luz neutra', department_id: electronics.id)
Category.create!(name: 'brinquedo masc', department_id: toys.id)
fem = Category.create!(name: 'brinquedo fem', department_id: toys.id)
Category.create!(name: 'brinquedo neutro', department_id: toys.id)
Category.create!(name: 'brinquedo online', department_id: toys.id)

for i in 1..12
    Product.create!(
      name: Faker::Commerce.product_name,
      weight: 0.5,
      width: 1.2,
      length: 0.6,
      depth: 0.2,
      quantity: 20,
      valueSell: 49.99,
      valueBuy: 29.99,
      description: Faker::Lorem.sentence(word_count: 3),
      category_id: fem.id,
      photo1: File.open("path/to/#{rand(1..9)}.jpeg"),
      photo2: File.open("path/to/#{rand(1..9)}.jpeg"),
      photo3: File.open("path/to/#{rand(1..9)}.jpeg")
    )
  end
  