class AddChapterToResource < ActiveRecord::Migration
  def change
    add_reference :resources, :chapter, index: true, foreign_key: true
  end
end
