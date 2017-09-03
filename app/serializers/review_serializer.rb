class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :review_id, :user_id, :submitter_id, :review, :review_date, :ranking
end
