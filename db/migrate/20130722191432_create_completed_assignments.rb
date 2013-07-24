class CreateCompletedAssignments < ActiveRecord::Migration
  def change
    create_table :completed_assignments do |t|
      t.references :user
      t.references :completed_task
      t.references :assignment

      t.timestamps
    end
    add_index :completed_assignments, :user_id
    add_index :completed_assignments, :completed_task_id
    add_index :completed_assignments, :assignment_id
  end
end
