class AddForeignKeyToSals < ActiveRecord::Migration
  def change
    add_column :sals, :sal_id, :integer
  end
end
