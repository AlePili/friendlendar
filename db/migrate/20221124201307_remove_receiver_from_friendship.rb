class RemoveReceiverFromFriendship < ActiveRecord::Migration[7.0]
  def change
    remove_column :friendships, :receiver_id
  end
end
