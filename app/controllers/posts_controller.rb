class PostsController < ApplicationController
  def index
    @posts = Post.includes(user: [:address]).all
  end
end
