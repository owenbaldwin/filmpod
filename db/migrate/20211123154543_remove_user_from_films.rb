class RemoveUserFromFilms < ActiveRecord::Migration[6.0]
  def change
    remove_reference :films, :user, null: false, foreign_key: true
  end
end
