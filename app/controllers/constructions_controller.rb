class ConstructionsController < ApplicationController
  def index
    @constructions = Construction.includes(:user).order("created_at DESC")
  end

  def new
    @construction = Construction.new
  end

  def create
  end

  private
  def construction_params 
    params.require(:construction).parmit(:image, :name, :message).merge(user_id: current_user.id)
  end

end
