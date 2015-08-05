class Like < ActiveRecord::Base
  belongs_to :photo
  belongs_to :user

validates_uniqueness_of :user, scope: :photo
  
end
