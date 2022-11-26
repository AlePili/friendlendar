class AddAskerAndReceiver < ActiveRecord::Migration[7.0]
  def change 
    add_reference :friendships, :receiver, foreign_key: { to_table: :users }
    add_reference :friendships, :asker, foreign_key: { to_table: :users }
  end
end
