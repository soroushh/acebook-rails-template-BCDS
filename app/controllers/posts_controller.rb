class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to root_url
  end

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def edit
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:message, :user_id)
  end
end
