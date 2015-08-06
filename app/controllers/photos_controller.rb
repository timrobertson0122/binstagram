class PhotosController < ApplicationController
  
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @photos = Photo.paginate(page: params[:page], per_page: 3)
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

  def like
    @photo = Photo.find(params[:id])
    like = Like.create(like: params[:like], user: User.first, photo: @photo) #change user to current_user
    if like.valid?
      flash[:success] = "Your selection was successful!"
    else 
      flash[:danger] = "You can only like/dislike a photo once."
    end
      redirect_to :back
  end

  private

    def photo_params
      params.require(:photo).permit(:image, :name, :description)
    end

end
