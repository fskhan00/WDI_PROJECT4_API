class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :ranking, :review
  has_one :user
end
