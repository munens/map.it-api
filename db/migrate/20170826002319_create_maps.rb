class CreateMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :maps do |t|
      t.references :user, foreign_key: true
      t.text :name
      t.text :location
      t.float :center_lat
      t.float :center_lng

      t.timestamps
    end
  end
end
