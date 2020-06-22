class ComentsController < ApplicationController
  before_action :authenticate_user!

  def create
    post = Post.find(params[:post_id])
    @coment = post.coments.build(coment_params)
    @coment.user_id = current_user.id
    if @coment.save
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
    end

  end

  private
  def coment_params
    params.require(:coment).permit(:text,:post_id,:user_id)
  end
end

end
