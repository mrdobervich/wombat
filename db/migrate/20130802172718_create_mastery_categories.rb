class CreateMasteryCategories < ActiveRecord::Migration
  def change
    create_table :mastery_categories do |t|
      t.string :name
      t.text :description
      t.string :description_link

      t.timestamps
    end
  end
end
