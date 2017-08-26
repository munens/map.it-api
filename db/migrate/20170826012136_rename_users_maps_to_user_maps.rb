class RenameUsersMapsToUserMaps < ActiveRecord::Migration[5.0]
  def change
    rename_table :users_maps, :user_maps
  end
end
