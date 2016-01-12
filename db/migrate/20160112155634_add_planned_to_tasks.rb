class AddPlannedToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :planed, :string
  end
end
