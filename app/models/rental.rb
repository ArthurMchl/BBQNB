class Rental < ApplicationRecord
  belongs_to :barbecue
  belongs_to :user
  validates :start_date, :end_date, presence: true
  validates_uniqueness_of :user_id, scope: :barbecue_id
end
