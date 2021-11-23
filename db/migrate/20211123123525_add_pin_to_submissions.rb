class AddPinToSubmissions < ActiveRecord::Migration[6.0]
  def change
    add_column :submissions, :pin, :boolean
  end
end
