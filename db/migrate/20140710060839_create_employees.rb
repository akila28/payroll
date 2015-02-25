class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :emp_code
      t.string :emp_category
      t.string :emp_branch
      t.string :emp_name
      t.string :emp_designation
      t.date :start_date
      t.date :end_date
      t.date :dob
      t.text :address

      t.timestamps
    end
  end
end
