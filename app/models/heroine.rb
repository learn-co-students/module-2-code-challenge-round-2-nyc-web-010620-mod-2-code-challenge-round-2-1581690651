class Heroine < ApplicationRecord
    has_many :power, through: :heroine_power
    validates :name, presense: true
    validates :super_name, presense: true
    validates :super_name, uniquiness: true, on: :
end
