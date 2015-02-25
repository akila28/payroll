class CreateSals < ActiveRecord::Migration
  def change
    create_table :sals do |t|
      t.integer :basic_paisa
      t.string :basic_currency
      t.integer :da_paisa
      t.string :da_currency
      t.integer :hra_paisa
      t.string :hra_currency
      t.integer :cca_paisa
      t.string :cca_currency
      t.integer :spl_paisa
      t.string :spl_currency
      t.integer :exp_paisa
      t.string :exp_currency
      t.integer :total_paisa
      t.string :total_currency

      t.timestamps
    end
  end
end
