class ImageSerializer < ActiveModel::Serializer
  attributes :id, :image_id, :property_id, :src, :alt, :description
end
