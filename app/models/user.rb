class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :invitations
  has_many :friendships
  has_many :askers, class_name: 'Friendship', foreign_key: 'asker_id'
  has_many :receivers, class_name: 'Friendship', foreign_key: 'receiver_id'
  has_many :events
  has_one_attached :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def to_s
    "#{self.first_name} #{self.last_name}"
  end
end
