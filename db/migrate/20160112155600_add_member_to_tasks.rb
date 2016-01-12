class AddMemberToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :member, :string
  end
end
