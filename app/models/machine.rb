class Machine < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :appointements
end
