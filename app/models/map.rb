class Map < ApplicationRecord
  has_many :user_maps
  has_many :users, through: :user_maps, dependent: :destroy 

  has_many :map_pins
  has_many :pins, through: :map_pins, dependent: :destroy
end
