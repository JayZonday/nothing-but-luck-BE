class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :favposts, :motto, :email, :name, :favsport, :profurl, :bgurl, :posts
  has_many :posts
end
