class PostSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :comments
  belongs_to :user
end
