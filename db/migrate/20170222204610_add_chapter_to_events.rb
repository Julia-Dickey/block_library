class AddChapterToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :chapter, :string
  end
end
