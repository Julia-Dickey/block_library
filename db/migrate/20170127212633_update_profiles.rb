class UpdateProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :company, :string
    add_column :profiles, :overview, :string
    add_column :profiles, :status, :string
    add_column :profiles, :industry, :string
    add_column :profiles, :founded, :string
    add_column :profiles, :membersince, :string
    add_column :profiles, :funding, :string
    add_column :profiles, :strategy, :string
    add_column :profiles, :exit, :string
    add_column :profiles, :website, :string
    add_column :profiles, :email, :string
  end
end
