class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :league, :user_id
  belongs_to :user, serializer: PostUserSerializer
end
