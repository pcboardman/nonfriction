class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :member_id
      t.integer :login_id
	  t.string :first_name, limit: 32, :null => false
      t.string :surname_name, limit: 32, :null => false
	  t.string :status, limit: 16, :null => false
      t.string :cell_number, limit: 18, :null => false
      t.string :email_addr, limit: 64, :null => false
      t.string :telkom_number, limit: 20
      t.string :address, limit: 80
      t.text :directions

      t.timestamps null: false
    end
    add_index :members, :member_id, unique: true
  end
end
