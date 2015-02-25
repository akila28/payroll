class AddGrosspaisaColumnToSals < ActiveRecord::Migration
  def change
    add_column :sals, :gross_paisa, :integer
  end
end
