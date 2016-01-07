class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :mantis
      t.string :task_type
      t.string :description
      t.string :status

      t.timestamps null: false
    end
  end
end
