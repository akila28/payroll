class AddNetsalpaisaColumnToSals < ActiveRecord::Migration
  def change
    add_column :sals, :net_sal_paisa, :integer
  end
end
