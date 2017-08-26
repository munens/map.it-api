class CreateUsersPins < ActiveRecord::Migration[5.0]
  def change
    create_table :users_pins do |t|
      t.integer :user_id
      t.integer :pin_id
    end
  end
end
