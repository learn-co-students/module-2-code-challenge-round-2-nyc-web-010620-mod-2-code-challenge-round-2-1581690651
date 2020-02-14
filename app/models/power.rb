class Power < ApplicationRecord
    has_many :herione, through: :heroine_power
end
