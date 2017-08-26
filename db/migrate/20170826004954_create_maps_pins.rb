class CreateMapsPins < ActiveRecord::Migration[5.0]
  def change
    create_table :maps_pins do |t|
      t.integer :map_id
      t.integer :pin_id
    end
  end
end
