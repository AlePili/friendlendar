class ChangeFrienshipStatusDefault < ActiveRecord::Migration[7.0]
  def change
    change_column :friendships, :status, :string, default: 'pending'
  end
end
