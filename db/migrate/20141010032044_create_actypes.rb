class CreateActypes < ActiveRecord::Migration
  def change
    create_table :actypes do |t|
      t.string :manuf
      t.string :variant
      t.string :rules
      t.float :DBA
      t.float :MC
      t.float :C

      t.timestamps
    end
  end
end
  