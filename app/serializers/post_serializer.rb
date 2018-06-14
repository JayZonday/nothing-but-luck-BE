class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :league, :user_id
end
