class Order < ApplicationRecord
  belongs_to :broth
  belongs_to :protein

  validates :description, presence: true
  validates :image, presence: true
end