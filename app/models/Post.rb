class Post < ApplicationRecord
  require 'obscenity/active_model'
  
  belongs_to :user

  validates :title, presence: true
  # validates :url, url: { allow_blank: true }
  validates :title,  obscenity: { sanitize: true, replacement: "@!#%"}
  validates :body,  obscenity: { sanitize: true, replacement: "@!#%"}


end
