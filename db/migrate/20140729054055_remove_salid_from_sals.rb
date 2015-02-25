class RemoveSalidFromSals < ActiveRecord::Migration
  def up
    remove_column :sals, :sal_id
  end

  def down
    add_column :sals, :sal_id, :integer
  end
end
