class Blog < ApplicationRecord
  belongs_to :user
  belongs_to :pin
end
