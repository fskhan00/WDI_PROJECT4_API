class RequestSerializer < ActiveModel::Serializer
  attributes :id, :approved, :request_date, :approval_date, :sender_id, :receiver_id, :sender, :receiver, :rental, :status
  has_one :rental
  has_one :sender
  has_one :receiver
end
