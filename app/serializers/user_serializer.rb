class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :favposts, :motto, :email, :name, :favsport, :profurl, :bgurl
end
