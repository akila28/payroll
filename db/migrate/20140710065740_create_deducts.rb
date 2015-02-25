class CreateDeducts < ActiveRecord::Migration
  def change
    create_table :deducts do |t|
      t.integer :pf
      t.integer :esi
      t.integer :te
      t.integer :share

      t.timestamps
    end
  end
end
