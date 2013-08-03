class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.references :grader
      t.references :student
      t.references :completed_assignment
      t.text :comment
      t.boolean :official

      t.timestamps
    end
    add_index :assessments, :grader_id
    add_index :assessments, :student_id
    add_index :assessments, :completed_assignment_id
  end
end
