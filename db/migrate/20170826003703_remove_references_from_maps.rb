class RemoveReferencesFromMaps < ActiveRecord::Migration[5.0]
  def change
    remove_reference :maps, :user, index: true, foreign_key: true
  end
end
