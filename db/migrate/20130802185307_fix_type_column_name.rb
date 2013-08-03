class FixTypeColumnName < ActiveRecord::Migration
  def change
    rename_column :objectives, :type, :objective_type
  end
end
