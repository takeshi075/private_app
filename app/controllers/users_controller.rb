class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit]
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).per(5)
  end

  def edit
    @user = current_user
  end
end
