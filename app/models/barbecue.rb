class Barbecue < ApplicationRecord

  validates :name, :description, :price, :location, presence: true
  validates :category, inclusion: { in: %w[Gaz Electrique Charbon Autre] }
  has_many :rentals, dependent: :destroy
  has_many :reviews
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
