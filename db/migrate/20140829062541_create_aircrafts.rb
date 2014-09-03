class CreateAircrafts < ActiveRecord::Migration
  def change
    create_table :aircrafts do |t|
      t.string :reg
      t.float :w1
      t.float :w2
      t.float :w3

      t.timestamps
    end
  end
end
