class RemoveGenderFromEmployee < ActiveRecord::Migration
  def up
    remove_column :employees, :gender
  end

  def down
    add_column :employees, :gender, :integer
  end
end
