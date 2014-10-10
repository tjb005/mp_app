class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :aircraft_id
      t.integer :actype_id

      t.timestamps
    end
    add_index :relationships, :aircraft_id
    add_index :relationships, :actype_id
    add_index :relationships, [:aircraft_id, :actype_id], unique: true
  end
end
