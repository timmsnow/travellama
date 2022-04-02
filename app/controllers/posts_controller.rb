class PostsController < ApplicationController
  def index
    @posts = Post.all.order(name: :asc)

    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    
    render json: @posts
  end
end
