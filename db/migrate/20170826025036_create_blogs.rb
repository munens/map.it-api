class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.references :user, foreign_key: true
      t.references :pin, foreign_key: true
      t.text :title
      t.text :description

      t.timestamps
    end
  end
end
