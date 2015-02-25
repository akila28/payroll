class ChangeEmpCodeFormatInEmployees < ActiveRecord::Migration
  def up
	change_column :employees, :emp_code, :string
  end

  def down
	change_column :employees, :emp_code, :integer
  end
end
