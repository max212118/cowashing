class Review < ApplicationRecord
  belongs_to :appointement
  belongs_to :user
end
