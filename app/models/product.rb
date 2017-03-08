class Product < ActiveRecord::Base
  validates :title, :presence => true
  # validates :size, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true
  # validates :diet, :presence => true
  # validates :flavor, :presence => true
  has_attached_file :image,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  attr_accessor :delete_image
  before_validation { self.image.clear if self.delete_image == '1' }

  has_many :reviews
end
