class AddForeignKeyToSals < ActiveRecord::Migration
  def change
    add_column :sals, :deduct_id, :integer
  end
end
