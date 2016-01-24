class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to '/posts'
  end

  def post_params
    params.require(:post).permit(:comment)
  end

  def show
  @post = Post.find(params[:id])
  end







end
