class AddImageToDepartments < ActiveRecord::Migration[6.0]
  def change
    add_column :departments, :image, :string
  end
end
