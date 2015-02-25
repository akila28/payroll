class AddForeignKeyToSals < ActiveRecord::Migration
  def change
    add_column :sals, :attendance_id, :integer
  end
end
