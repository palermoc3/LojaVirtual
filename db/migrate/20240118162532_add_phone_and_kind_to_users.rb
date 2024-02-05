# frozen_string_literal: true

class AddPhoneAndKindToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :phone, :string
    add_column :users, :kind, :boolean
  end
end
