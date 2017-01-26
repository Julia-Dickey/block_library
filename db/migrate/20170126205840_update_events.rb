class UpdateEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :allDay, :boolean
    add_column :events, :start, :datetime
    add_column :events, :end, :datetime
    add_column :events, :url, :string
    add_column :events, :className, :string
    add_column :events, :editable, :boolean
    add_column :events, :startEditable, :boolean
    add_column :events, :durationEditable, :boolean
    add_column :events, :resourceEditable, :boolean
    add_column :events, :overlap, :boolean
  end
end
