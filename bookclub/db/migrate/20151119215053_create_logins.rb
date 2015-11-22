class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.integer :login_id
      t.integer :member_id
      t.integer :access_level
      t.string :username, limit: 40
      t.string :hashed_pwd, limit: 40

      t.timestamps null: false
    end
    add_index :logins, :login_id, unique: true
  end
end
