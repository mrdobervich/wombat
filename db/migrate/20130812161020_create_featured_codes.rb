class CreateFeaturedCodes < ActiveRecord::Migration
  def change
    create_table :featured_codes do |t|
      t.string :title
      t.string :short_task_description
      t.text :task_description
      t.string :author
      t.text :code
      t.references :course

      t.timestamps
    end
    add_index :featured_codes, :course_id
  end
end
