class AddSolutionToCompletedTask < ActiveRecord::Migration
  def change
    add_column :completed_tasks, :solution, :text
  end
end
