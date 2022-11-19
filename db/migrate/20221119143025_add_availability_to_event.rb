class AddAvailabilityToEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :availability, :integer
  end
end
