class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :category
      t.references :course
      t.references :task
      t.string :title
      t.text :description

      t.timestamps
    end
    add_index :assignments, :course_id
    add_index :assignments, :task_id
  end
end
