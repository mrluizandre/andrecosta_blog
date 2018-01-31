class BlogController < ApplicationController
  def home
    @posts = Post.order(created_at: :asc)
  end

  def contact
  end
end
