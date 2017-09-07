class User < ApplicationRecord
  has_secure_password
  has_many :rentals
  has_many :reviews
  has_many :sent_requests, foreign_key: :sender_id, class_name: "Request"
  has_many :received_requests, foreign_key: :receiver_id, class_name: "Request"

  validates :username, presence: true
  validates :email, uniqueness: true, presence: true
end
