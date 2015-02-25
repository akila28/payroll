class RemoveNetsalFromSals < ActiveRecord::Migration
  def up
    remove_column :sals, :net_sal
  end

  def down
    add_column :sals, :net_sal, :integer
  end
end
