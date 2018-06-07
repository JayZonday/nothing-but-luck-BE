class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :favposts
end
