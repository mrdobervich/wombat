class CreateObjectives < ActiveRecord::Migration
  def change
    create_table :objectives do |t|
      t.references :assignment
      t.references :mastery_category
      t.text :description
      t.string :type

      t.timestamps
    end
    add_index :objectives, :assignment_id
    add_index :objectives, :mastery_category_id
  end
end
