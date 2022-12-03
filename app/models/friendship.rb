class Friendship < ApplicationRecord
  validates :status, inclusion: { in: %w(pending accepted declined)}

  belongs_to :asker, class_name: 'User', foreign_key: "asker_id"
  belongs_to :receiver, class_name: 'User', foreign_key: "receiver_id"

  validates :asker, uniqueness: { scope: :receiver }
end
