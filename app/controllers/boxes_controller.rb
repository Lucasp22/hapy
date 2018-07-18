class BoxesController < ApplicationController
  before_action :check_for_login, :only => [:new, :create]

  def index
    @boxes = @current_user.boxes
  end

  def show
    @box = Box.find params[:id]
  end


  def new
    @box = Box.new
  end

  def create
    box = Box.create box_params

    cloudinary = Cloudinary::Uploader.upload( params[ "box" ][ "image" ] )
    box.image = cloudinary["url"]

    box.user_id = @current_user.id
    box.save

    redirect_to box
  end

  def edit
      @box = Box.find params[:id]
      # binding.pry
  end

  def update
    box = Box.find params[:id]
    box.update box_params

    if params["box"]["image"].present?
      cloudinary = Cloudinary::Uploader.upload( params[ "box" ][ "image" ] )
      box.image = cloudinary["url"]
    end
    box.user_id = @current_user.id
    box.save

    redirect_to box

  end


  def destroy
    box = Box.find params[:id]
    box.destroy
    redirect_to boxes_path
  end




  private
  def box_params
    params.require(:box).permit(:title, :image, :location, :user_id)
  end
end
