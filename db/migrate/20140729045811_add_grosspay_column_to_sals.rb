class AddGrosspayColumnToSals < ActiveRecord::Migration
  def change
    add_column :sals, :grosspay, :integer
  end
end
