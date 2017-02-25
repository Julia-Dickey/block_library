class AddChapterToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :chapter, :string
  end
end
