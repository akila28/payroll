class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :wday
      t.integer :attend_day
      t.integer :od
      t.integer :el
      t.integer :cl
      t.integer :sl
      t.integer :lop

      t.timestamps
    end
  end
end
