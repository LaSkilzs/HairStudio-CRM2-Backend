class GallerySerializer < ActiveModel::Serializer
  attributes :id, :image, :gallery_category_id


belongs_to :gallery_category
end
