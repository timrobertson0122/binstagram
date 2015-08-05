class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_attached_file :image, :styles => { :medium => "300X300>", :thumb => "100x100>" }, :default_url => '/images/:style/missing.png'
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :name, length: { minimum: 3 }, presence: :true
  validates :description, length: { minimum: 10 }, presence: :true
  validates :image, presence: true
  validates :user_id, presence: true
  default_scope -> { order(updated_at: :desc) }

  def thumbs_up_total
    self.likes.where(like: true).size
  end

  def thumbs_down_total
    self.likes.where(like: false).size
  end

end
