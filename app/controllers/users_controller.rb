class UsersController < ApplicationController

  def index
    @users = User.paginate(page: params[:page], per_page: 3)
  end

  def show
    @user = User.find(params[:id])
    @photos = @user.photos.paginate(page: params[:page], per_page: 3)
  end

end 