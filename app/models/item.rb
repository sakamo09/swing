class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :genre_id, presence: true
  validates :maker_id, presence: true
  validates :price, presence: true
  validates :merit, presence: true
  validates :image, presence: true
end
