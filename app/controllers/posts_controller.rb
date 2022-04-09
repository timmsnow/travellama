class PostsController < ApplicationController
  def index
    @posts = Post.all.order(name: :asc)

    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    
    render json: @posts
  end

  def create
    clean_params = params["post"].permit!
    @post = Post.create!(clean_params)
    render json: @post
  end
end
