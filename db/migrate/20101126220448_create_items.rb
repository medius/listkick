class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name,     :null => false
      t.boolean :active,  :null => false, :default => true
      t.integer :list_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
