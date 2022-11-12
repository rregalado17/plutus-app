class Investors < ActiveRecord::Migration[6.0]
  def change
    create_table :investors do |t|
      t.string :username
      t.string :email
      t.timestamps
    end
  end
end
