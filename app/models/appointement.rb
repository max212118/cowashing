class Appointement < ApplicationRecord
  has_many :reviews
  belongs_to :machine
  belongs_to :user
end
