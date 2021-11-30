class AddDefaultSubmittedToStatusForSubmissions < ActiveRecord::Migration[6.0]
  def change
    change_column_default :submissions, :status, from:nil, to: "submitted"
  end
end
