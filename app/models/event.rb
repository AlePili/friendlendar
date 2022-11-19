class Event < ApplicationRecord
  belongs_to :users
  has_many :invitations
end
