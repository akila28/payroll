class AddForeignKeyToSals < ActiveRecord::Migration
  def change
    add_column :sals, :employee_id, :integer
  end
end
