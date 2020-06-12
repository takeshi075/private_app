class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @menu = Menu1.new(menu_params)
    @menu = Menu2.new(menu_params)
    @post.save!
    @menu.save!
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:memo, :image).merge(user_id: current_user.id)
  end

  def menu_params
    params.require(:menu).permit(:menu, :weight_id,:repetition_id,:set_count_id).merge(user_id: current_user.id)
  end
end
