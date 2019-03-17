class HairCard < ApplicationRecord
  belongs_to :user
  belongs_to :stylist, class_name: :User, foreign_key: :stylist_id
  belongs_to :hair_personality

  enum hair_type: {normal: "normal", very_thick: "very_thick", thick: "thick", medium: "medium", fine: "fine"}
  enum hair_is:   {reqular: "regular", wavy: "wavy", curly: "curly", straight: "straight", fuzzy: "fuzzy"}
  enum length:    {unknown: "unknown", above_shoulder: "above_shoulder", below_shoulder: "below_shoulder"}
end
