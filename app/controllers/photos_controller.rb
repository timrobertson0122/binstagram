class PhotosController < ApplicationController
  
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params.merge(user: current_user))
    # add @photo.user == current_user
      if @photo.save
        flash[:success] = "Posted!"
        redirect_to photos_path
      else
        render :new
      end
  end

  private

    def photo_params
      params.require(:photo).permit(:image, :name, :description)
    end

end
