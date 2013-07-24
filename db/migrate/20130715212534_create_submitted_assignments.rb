class CreateSubmittedAssignments < ActiveRecord::Migration
  def change
    create_table :submitted_assignments do |t|
      t.references :user
      t.references :assignment
      t.integer :revision

      t.timestamps
    end
    add_index :submitted_assignments, :user_id
    add_index :submitted_assignments, :assignment_id
  end
end
