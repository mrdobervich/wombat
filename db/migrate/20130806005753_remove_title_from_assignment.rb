class RemoveTitleFromAssignment < ActiveRecord::Migration
  def up
    remove_column :assignments, :title
  end

  def down
    add_column :assignments, :title, :string
  end
end
