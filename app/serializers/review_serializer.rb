class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :ranking, :review, :user
  has_one :user
end
