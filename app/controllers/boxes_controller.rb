class BoxesController < ApplicationController
  before_action :check_for_login, :only => [:new, :create]

  def index
    @boxes = Box.all
  end

  def show
    @box = Box.find params[:id]
  end


  def new
    @box = Box.new
  end

  def create
    box = Box.create box_params
    redirect_to box
  end

  def edit
      @box = Box.find params[:id]
  end

  def update
    box = Box.find params[:id]
    box.update box_params
    redirect_to box
  end


  def create
    box = @current_user.boxes.create box_params
    redirect_to root_path
  end


  def destroy
    box = Box.find params[:id]
    box.destroy
    redirect_to boxes_path
  end




  private
  def box_params
    params.require(:box).permit(:title, :image, :location)
  end
end
