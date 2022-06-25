class User < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :experience
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :experience_id, presence: true,numericality: { other_than: 1 , message: "can't be blank"}
  validates :profile, presence: true

  has_many :items
  has_many :comments
end
