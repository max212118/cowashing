class Appointement < ApplicationRecord
    has_many: machines
    has_many: users
end
