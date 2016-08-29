class RenameColumnTo < ActiveRecord::Migration
  def change
  	rename_column :welcomes, :name, :first_name

  	add_column :welcomes, :last_name, :string
    add_column :welcomes, :street_address1, :string
    add_column :welcomes, :street_address2, :string
    add_column :welcomes, :city, :string
    add_column :welcomes, :state, :string
    add_column :welcomes, :country, :string
    add_column :welcomes, :amount, :integer
    add_column :welcomes, :zip, :integer

  end
end
