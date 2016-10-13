class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :mobile
      t.string :street_address1
      t.string :street_address2
      t.string :city
      t.string :state
      t.integer :pin

      t.timestamps null: false
    end
  end
end
