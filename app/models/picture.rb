class Picture < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  validates :image, presence: true
  validates :description, presence: true
end