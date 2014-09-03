class CreateW1s < ActiveRecord::Migration
  def change
    create_table :w1s do |t|
      t.date :date
      t.string :desc
      t.float :wt
      t.float :arm
      t.float :moment
      t.string :wca
      t.integer :aircraft_id

      t.timestamps
    end
   add_index :w1s, [:aircraft_id]

  end
end
