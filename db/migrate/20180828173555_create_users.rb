# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, index: true, null: false
      t.string :password
      t.integer :role, default: 0
    end
  end
end
