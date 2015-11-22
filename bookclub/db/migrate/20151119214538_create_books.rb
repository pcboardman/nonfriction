class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn, limit: 14
      t.integer :status
      t.string :author, limit: 64
      t.string :title, limit: 64
      t.string :location, limit: 10

      t.timestamps null: false
    end
    add_index :books, :isbn, unique: true
  end
end
