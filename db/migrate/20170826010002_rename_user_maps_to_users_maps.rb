class RenameUserMapsToUsersMaps < ActiveRecord::Migration[5.0]
  def change
    rename_table :user_maps, :users_maps
  end
end
