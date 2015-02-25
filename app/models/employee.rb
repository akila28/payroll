class Employee < ActiveRecord::Base

has_many :sals
accepts_nested_attributes_for :sals

has_many :deducts
accepts_nested_attributes_for :deducts

has_many :attendances
accepts_nested_attributes_for :attendances

 attr_accessible :address, :dob, :emp_branch, :emp_category, :emp_code, :emp_designation, :emp_name, :end_date, :start_date, :Age, :gender, :address, :mobile, :sals_id, :deducts_id,  :attendances_id
attr_accessible :deducts_attributes, :sals_attributes, :attendances_attributes


before_create :increment_code
def increment_code
    self.emp_code = (self.class.last.nil?) ? "00001" : ((self.class.last.emp_code.to_i) + 1).to_s.rjust(5,'0')
end

end


