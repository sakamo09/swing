class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :maker
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy


  validates :genre_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"} 
  validates :maker_id, presence: true, numericality: { other_than: 1 , message: "can't be blank"}
  validates :price, presence: true
  validates :merit, presence: true
  validates :image, presence: true
end
