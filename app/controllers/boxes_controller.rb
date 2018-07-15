class BoxesController < ApplicationController
  before_action :check_for_login, :only => [:new, :create]

  def new
    @box = Box.new
  end

  def create

    box = @current_user.boxes.create
    box_params
    redirect_to root_path
  end

  private
  def box_params
    params.require(:box).permit(:title)
  end
end
