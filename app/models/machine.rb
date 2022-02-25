class Machine < ApplicationRecord
  belongs_to :user
  has_many :appointements, dependent: :destroy
  has_many :reviews, through: :appointements
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
