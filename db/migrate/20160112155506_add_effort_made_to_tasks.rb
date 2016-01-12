class AddEffortMadeToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :effort_made, :string
  end
end
