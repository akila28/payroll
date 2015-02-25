class RemoveEmpIdFromSals < ActiveRecord::Migration
  def up
    remove_column :sals, :emp_id
  end

  def down
    add_column :sals, :emp_id, :integer
  end
end
