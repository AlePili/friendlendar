class Friendship < ApplicationRecord
  validates :status, inclusion: { in: %w(pending accepted declined)}
  belongs_to :asker, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
end
