class AddResourceToChapter < ActiveRecord::Migration
  def change
    add_reference :chapters, :chapter, index: true, foreign_key: true
  end
end
