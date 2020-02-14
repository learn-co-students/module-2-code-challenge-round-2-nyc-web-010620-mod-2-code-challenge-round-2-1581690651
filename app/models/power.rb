class Power < ApplicationRecord
    has_many :heroine_power
    has_many :heroine, through: :heroine_power
end
