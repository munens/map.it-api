class CreateUserMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :user_maps do |t|
      t.integer :user_id
      t.integer :map_id
    end
  end
end
