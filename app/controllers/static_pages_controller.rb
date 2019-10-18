class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @static_pages = Model.all
  end

  def new
    @static_pages = Model.new
  end

  def create
    current_user.models.create(model_params)
    redirect_to root_path
  end

  private

  def model_params
    params.require(:place).permit(:name, :description, :address)
  end
end
