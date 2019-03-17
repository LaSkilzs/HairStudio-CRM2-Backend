class GalleryCategory < ApplicationRecord
  has_many :galleries

  validates :name, presence: true
end
