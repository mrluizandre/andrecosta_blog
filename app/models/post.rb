class Post < ApplicationRecord
  belongs_to :category
  mount_uploader :image, PostImageUploader
  extend FriendlyId
  friendly_id :title, use: :slugged
  acts_as_taggable

  validates_presence_of :title, :image, :body, :status, :tag_list
  enum :status => { draft: 0, published: 1, archived: 2}
end
