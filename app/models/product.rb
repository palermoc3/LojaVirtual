# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category

  has_one_attached :photo1
  has_one_attached :photo2
  has_one_attached :photo3

  after_create :increment_category_quantity
  after_destroy :decrement_category_quantity

  validates :name, presence: { message: 'Não pode ser vazio' }
  validates :sub_category, presence: { message: 'Deve ser associado a uma categoria' }
  validates :weight, :width, :length, :valueBuy, :valueSell, :depth, :quantity,
            numericality: { greater_than: 0, message: 'Deve ser maior que zero' }
  validates :valueSell, numericality: { greater_than: :valueBuy, message: 'deve ser maior do que o valor de compra' }

  def increment_department_quantity
    department.increment!(:quantity)
  end

  def decrement_department_quantity
    department.decrement!(:quantity)
  end
end
