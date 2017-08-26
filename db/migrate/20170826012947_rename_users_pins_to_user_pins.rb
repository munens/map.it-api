class RenameUsersPinsToUserPins < ActiveRecord::Migration[5.0]
  def change
    rename_table :users_pins, :user_pins
  end
end
