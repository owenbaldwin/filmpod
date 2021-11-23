class RemoveDepartmentFromUsers < ActiveRecord::Migration[6.0]
  def change
    # remove_reference :users, :department, null: false, foreign_key: true
    remove_reference :users, :department, null: false, foreign_key: true

  end
end
