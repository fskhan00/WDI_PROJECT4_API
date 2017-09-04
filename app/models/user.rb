class User < ApplicationRecord
  has_secure_password

  has_many :properties
  has_many :requests
  has_many :reviews


  validates :password_confirmation, presence: true
  validates :email, uniqueness: true, presence: true
end
