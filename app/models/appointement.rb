class Appointement < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :machine
  belongs_to :user
end
