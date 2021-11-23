class CreateGrants < ActiveRecord::Migration[6.0]
  def change
    create_table :grants do |t|
      t.string :rank_level
      t.references :user, null: false, foreign_key: true
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
