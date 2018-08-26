class Post < ApplicationRecord
  belongs_to :category
  mount_uploader :image, PostImageUploader
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :image, :body
  enum :status => { draft: 0, published: 1, archived: 2}
end
