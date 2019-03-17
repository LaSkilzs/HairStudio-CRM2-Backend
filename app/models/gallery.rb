class Gallery < ApplicationRecord
  belongs_to :gallery_category
  belongs_to :gallerable, polymorphic: true

  validates :image, presence: true
  validates :gallerable_type, presence: true
end
