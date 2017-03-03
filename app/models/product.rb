class Product < ApplicationRecord
  validates :title, :presence => true
  validates :size, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true
  validates :diet, :presence => true
  validates :flavor, :presence => true

  belongs_to :user

end
