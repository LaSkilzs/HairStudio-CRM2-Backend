class GalleryCategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :galleries

  has_many :galleries
end
