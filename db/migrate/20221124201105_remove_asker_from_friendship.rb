class RemoveAskerFromFriendship < ActiveRecord::Migration[7.0]
  def change
    remove_column :friendships, :asker_id
  end
end
