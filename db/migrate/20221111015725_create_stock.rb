class CreateStock < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :name
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
