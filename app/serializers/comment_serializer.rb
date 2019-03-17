class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :user_id, :post_id

  belongs_to: user
  belongs_to: post
end
