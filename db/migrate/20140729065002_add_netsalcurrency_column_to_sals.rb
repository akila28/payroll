class AddNetsalcurrencyColumnToSals < ActiveRecord::Migration
  def change
    add_column :sals, :net_sal_currency, :integer
  end
end
