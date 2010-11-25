class CreateLists < ActiveRecord::Migration
  def self.up
    create_table :lists do |t|
      t.string :name,     :null => false
      #t.integer :owner_id
      t.integer :user_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :lists
  end
end
