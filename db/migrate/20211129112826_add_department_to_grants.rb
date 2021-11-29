class AddDepartmentToGrants < ActiveRecord::Migration[6.0]
  def change
    add_reference :grants, :department, foreign_key: true
  end
end
