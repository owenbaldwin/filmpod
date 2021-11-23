class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :title
      t.text :synopsis
      t.string :genre
      t.date :estimated_release_date

      t.timestamps
    end
  end
end
