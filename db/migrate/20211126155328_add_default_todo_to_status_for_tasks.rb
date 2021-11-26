class AddDefaultTodoToStatusForTasks < ActiveRecord::Migration[6.0]
  def change
    change_column_default :tasks, :status, from:nil, to: "to-do"
  end
end
