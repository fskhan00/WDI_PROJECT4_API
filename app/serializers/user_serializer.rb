class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :full_name, :image
  has_many :rentals
  has_many :sent_requests
  has_many :received_requests

  def full_name
    "#{object.first_name} #{object.last_name}"
  end
end
