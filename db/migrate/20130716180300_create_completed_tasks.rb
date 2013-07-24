class CreateCompletedTasks < ActiveRecord::Migration
  def change
    create_table :completed_tasks do |t|
      t.references :user
      t.references :task
      t.integer :revision

      t.timestamps
    end
    add_index :completed_tasks, :user_id
    add_index :completed_tasks, :task_id
  end
end
