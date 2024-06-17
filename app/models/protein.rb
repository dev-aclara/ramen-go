class Protein < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :image_active, presence: true
  validates :image_inactive, presence: true
end
