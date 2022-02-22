class Appointement < ApplicationRecord
  has_many :reviews
  has_one :machine
  has_one :user
end
