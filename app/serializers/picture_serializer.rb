class PictureSerializer < ActiveModel::Serializer
  attributes :id, :imagefile, :description, :alt
  has_one :rental
end
