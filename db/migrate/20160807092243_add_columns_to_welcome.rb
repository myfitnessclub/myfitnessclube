class AddColumnsToWelcome < ActiveRecord::Migration
  def change
    add_column :welcomes, :name, :string
    add_column :welcomes, :phone, :string
    add_column :welcomes, :email, :string
    add_column :welcomes, :address, :string
    add_column :welcomes, :message, :string
  end
end
