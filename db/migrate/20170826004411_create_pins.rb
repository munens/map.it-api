class CreatePins < ActiveRecord::Migration[5.0]
  def change
    create_table :pins do |t|
      t.text :location
      t.float :pin_lat
      t.float :pin_lng

      t.timestamps
    end
  end
end
