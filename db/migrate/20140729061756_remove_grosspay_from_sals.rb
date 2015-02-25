class RemoveGrosspayFromSals < ActiveRecord::Migration
  def up
    remove_column :sals, :grosspay
  end

  def down
    add_column :sals, :grosspay, :integer
  end
end
