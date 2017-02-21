class AddBodyToPartner < ActiveRecord::Migration[5.0]
  def change
    add_column :partners, :body, :text
  end
end
