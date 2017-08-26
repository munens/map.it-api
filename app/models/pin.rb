class Pin < ApplicationRecord
	has_many :map_pins
	has_many :maps, through: :map_pins, dependent: :destroy

	has_many :user_pins
	has_many :users, through: :user_pins, dependent: :destroy
end
