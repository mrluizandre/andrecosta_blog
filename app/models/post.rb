class Post < ApplicationRecord
  mount_uploader :image, PostImageUploader
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :image, :body
end
