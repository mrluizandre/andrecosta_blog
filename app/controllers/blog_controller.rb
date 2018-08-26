class BlogController < ApplicationController
  def home
    # @posts = Post.published.order(created_at: :asc)
    if params[:tag]
      @posts = Post.published.order(created_at: :asc).tagged_with(params[:tag])
    else
      @posts = Post.published.order(created_at: :asc)
    end

  end

  def contact
  end
end
