class RequestSerializer < ActiveModel::Serializer
  attributes :id, :request_id, :user_id, :property_id, :status, :request_date, :approval_date
end
