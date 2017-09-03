class PropertySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :rooms, :property_id, :price, :adress_line1, :adress_line2, :postcode, :city, :country, :longitude, :latitude, :available, :start_date, :end_date
end
