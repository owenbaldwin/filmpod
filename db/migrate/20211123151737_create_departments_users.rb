class CreateDepartmentsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :departments_users do |t|
      t.references :department, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
