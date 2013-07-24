class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :short_description
      t.string :long_description
      t.integer :difficulty

      t.timestamps
    end
  end
end
