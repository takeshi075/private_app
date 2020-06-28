class RmsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rms = Rm.find(params[:id]) 
  end

  def new
    @rm = Rm.new
  end

  def show
    @rm = Rm.find(params[:id])
  end

  def create
    @rm = Rm.new(rm_params)
    @rm.save
    redirect_to rm_path(@rm)
  end

    private
  def rm_params
    params.require(:rm).permit(:use_weight,:reps).merge(user_id: current_user.id)
  end
    
end

