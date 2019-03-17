class Gallery < ApplicationRecord
  belongs_to :gallery_category
  belongs_to :gallerable, polymorphic: true
end
