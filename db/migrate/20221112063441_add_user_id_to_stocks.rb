class AddUserIdToStocks < ActiveRecord::Migration[6.0]
  def change
    add_column :stocks, :user_id, :int
  end
end
