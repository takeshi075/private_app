class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save!
    redirect_to root_path
  end

  
  private
  def post_params
    params.require(:post).permit(:memo, :image,:menu1,:menu2,:menu3,:menu4,:menu5 ).merge(user_id: current_user.id)
  end

end

