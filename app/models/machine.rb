class Machine < ApplicationRecord
  has_many :reviews, through: :appointements
end
