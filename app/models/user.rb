class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :barbecues
  has_many :rentals

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
