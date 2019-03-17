class StylistInfoSerializer < ActiveModel::Serializer
  attributes :id, :certification, :organization, :license, 
  :license_id, :renewal, :about_summary, :webpic

  belongs_to :stylist
end
