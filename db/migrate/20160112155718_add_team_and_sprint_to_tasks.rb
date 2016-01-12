class AddTeamAndSprintToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :team_id, :string
    add_column :tasks, :sprint_number, :string
  end
end
