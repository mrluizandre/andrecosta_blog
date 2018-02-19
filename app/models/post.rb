class Post < ApplicationRecord
  mount_uploader :image, PostImageUploader

  validates_presence_of :title, :image, :body
end
