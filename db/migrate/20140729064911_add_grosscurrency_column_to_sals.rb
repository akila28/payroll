class AddGrosscurrencyColumnToSals < ActiveRecord::Migration
  def change
    add_column :sals, :gross_currency, :integer
  end
end
