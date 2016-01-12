class AddEffortToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :estimated_time, :string
    add_column :tasks, :complexity, :string
    add_column :tasks, :skill, :string
  end
end
