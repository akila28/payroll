class AddNetsalColumnToSals < ActiveRecord::Migration
  def change
    add_column :sals, :net_sal, :integer
  end
end
