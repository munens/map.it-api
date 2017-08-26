class User < ApplicationRecord
	has_many :user_maps
	has_many :maps, through: :user_maps, dependent: :destroy
	
	has_many :user_pins
	has_many :pins, through: :user_pins, dependent: :destroy

	has_secure_password
end
