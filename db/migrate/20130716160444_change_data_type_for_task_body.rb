class ChangeDataTypeForTaskBody < ActiveRecord::Migration
  def up
    change_column :tasks, :long_description, :text
  end

  def down
    change_column :tasks, :long_description, :string
  end
end
