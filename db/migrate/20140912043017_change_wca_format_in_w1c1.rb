class ChangeWcaFormatInW1c1 < ActiveRecord::Migration
  def up
    change_column :w1c1s, :wca, :string
  end

  def down
    change_column :w1c1s, :wca, :float
  end
end
