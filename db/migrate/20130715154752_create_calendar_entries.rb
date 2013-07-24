class CreateCalendarEntries < ActiveRecord::Migration
  def change
    create_table :calendar_entries do |t|
      t.references :course
      t.date :date
      t.text :body
      t.string :title

      t.timestamps
    end
  end
end
