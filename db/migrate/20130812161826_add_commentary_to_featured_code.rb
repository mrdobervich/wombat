class AddCommentaryToFeaturedCode < ActiveRecord::Migration
  def change
    add_column :featured_codes, :commentary, :text
  end
end
