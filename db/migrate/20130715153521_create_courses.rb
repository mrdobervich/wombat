class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :year
      t.integer :period

      t.timestamps
    end
  end
end
