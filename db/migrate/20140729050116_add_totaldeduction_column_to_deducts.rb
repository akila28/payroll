class AddTotaldeductionColumnToDeducts < ActiveRecord::Migration
  def change
    add_column :deducts, :total_deduction, :integer
  end
end
