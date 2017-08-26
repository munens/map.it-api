class UserPin < ApplicationRecord
	belongs_to :user
	belongs_to :pin
end