class RentalSerializer < ActiveModel::Serializer
  attributes :id, :rooms, :price, :address_line1, :address_line2, :city, :post_code, :country, :lat, :long, :available, :start_date, :end_date, :image
  has_one :user
  has_many :reviews
end
