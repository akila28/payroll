class AddAgeColumnToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :Age, :integer
  end
end
