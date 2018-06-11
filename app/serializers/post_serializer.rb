class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :league
end
