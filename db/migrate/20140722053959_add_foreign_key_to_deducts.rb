class AddForeignKeyToDeducts < ActiveRecord::Migration
  def change
    add_column :deducts, :employee_id, :integer
  end
end
