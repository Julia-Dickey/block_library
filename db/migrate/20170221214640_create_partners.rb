class CreatePartners < ActiveRecord::Migration[5.0]
  def change
    create_table :partners do |t|
      t.string :company
      t.string :partnership
      t.string :industry
      t.string :website
      t.string :contactperson
      t.string :phone
      t.string :email
      t.string :since
      t.string :video

      t.timestamps
    end
  end
end
