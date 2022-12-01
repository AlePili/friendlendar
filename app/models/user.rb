class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :invitations
  has_many :friendships
  has_many :friend_askers, class_name: 'Friendship', foreign_key: 'asker_id'
  has_many :friend_reciever, class_name: 'Friendship', foreign_key: 'reciever_id'
  has_many :events
  has_one_attached :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def to_s
    "#{self.email}"
  end
end
