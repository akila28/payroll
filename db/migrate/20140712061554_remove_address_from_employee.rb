class RemoveAddressFromEmployee < ActiveRecord::Migration
  def up
    remove_column :employees, :address
  end

  def down
    add_column :employees, :address, :integer
  end
end
