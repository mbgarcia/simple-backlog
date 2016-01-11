class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.string :number
      t.string :started_on
      t.string :finished_on
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
