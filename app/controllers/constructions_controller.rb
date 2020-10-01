class ConstructionsController < ApplicationController
  before_action :set_construction, only: [:show, :edit, :update]

  def index
    @constructions = Construction.includes(:user).order("created_at DESC")
  end

  def new
    @construction = Construction.new
  end

  def create
    @construction = Construction.new(construction_params)
    if @construction.save
      redirect_to constructions_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @construction.update(construction_params)
      redirect_to construction_path(@construction.id)
    else
      render :edit
    end
  end

  def destroy
    construction = Construction.find(params[:id])
    if construction.destroy
      redirect_to root_path 
    end
  end



  private
  def construction_params 
    params.require(:construction).permit(:image, :name, :message).merge(user_id: current_user.id)
  end

  def set_construction
    @construction = Construction.find(params[:id])
  end

end
