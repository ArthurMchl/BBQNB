class Barbecue < ApplicationRecord
  has_many :rentals, dependent: :destroy
  belongs_to :user
  validates :name, :description, :price, :location, presence: true
  validates :category, inclusion: { in: %w[Gaz Electrique Charbon Autre] }
  mount_uploader :photo, PhotoUploader
end
