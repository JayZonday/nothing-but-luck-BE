class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :favposts, :motto, :email, :name, :favsport, :profurl, :bgurl
  has_many :posts
end
