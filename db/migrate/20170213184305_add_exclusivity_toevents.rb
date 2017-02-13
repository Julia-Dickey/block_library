class AddExclusivityToevents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :exclusive, :boolean

  end
end
