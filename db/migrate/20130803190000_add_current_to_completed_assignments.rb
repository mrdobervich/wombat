class AddCurrentToCompletedAssignments < ActiveRecord::Migration
  def change
    add_column :completed_assignments, :current, :boolean
  end
end
