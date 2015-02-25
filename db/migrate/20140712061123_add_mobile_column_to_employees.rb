class AddMobileColumnToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :mobile, :integer
  end
end
