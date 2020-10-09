class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile
  has_many :room_users
  has_many :messages
  has_many :rooms, through: :room_users

  with_options presence: true do
    validates :nickname
    validates :nickname, uniqueness: true
    validates :email
    validates :email, uniqueness: true
    validates :password 
    validates :password,uniqueness: true
    validates :password, format: { with: /[a-z\d]{8,}/i}
  end
end
