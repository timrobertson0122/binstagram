class CommentsController < ApplicationController

  before_action :authenticate_user!, :except => [:index, :show]
  
  def comment_params
    params.require(:comment).permit(:thoughts)
  end

  def new
    @photo = Photo.find(params[:photo_id])
    @comment = Comment.new
  end

  def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.build(comment_params.merge(user: current_user))
    @comment.save
    redirect_to photo_path(@photo)
  end

  def posted_at
    (Time.now - comment.created_at).ago_in_words
  end
end
