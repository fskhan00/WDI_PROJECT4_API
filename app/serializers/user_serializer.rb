class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :first_name, :last_name, :email, :password, :image
end
