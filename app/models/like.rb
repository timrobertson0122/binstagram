class Like < ActiveRecord::Base
  belongs_to :photo
  belongs_to :user


  def thumbs_up_total
    self.likes.where(like: true).size
  end

  def thumbs_down_total
    self.likes.where(like: false).size
  end
  
end
