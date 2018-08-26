class BlogController < ApplicationController
  def home
    @posts = Post.published.order(created_at: :asc)
  end

  def contact
  end
end
