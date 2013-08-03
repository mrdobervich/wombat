class CreateObjectiveResults < ActiveRecord::Migration
  def change
    create_table :objective_results do |t|
      t.references :objective
      t.references :assessment
      t.references :student
      t.references :mastery_category
      t.integer :score
      t.text :comment

      t.timestamps
    end
    add_index :objective_results, :objective_id
    add_index :objective_results, :assessment_id
    add_index :objective_results, :student_id
    add_index :objective_results, :mastery_category_id
  end
end
