class RenameMapsPinsToMapPins < ActiveRecord::Migration[5.0]
  def change
    rename_table :maps_pins, :map_pins
  end
end
