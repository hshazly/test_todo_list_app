class AddCompletedAtToTodoItems < ActiveRecord::Migration
  def change
    add_column :todo_items, :completed_at, :date
  end
end
