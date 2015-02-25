class Deduct < ActiveRecord::Base
belongs_to :employee
has_many :sals

  attr_accessible :esi, :pf, :share, :te, :employee_id, :deducts_id, :deducts_attributes, :total_deduction

before_save :calculate_value
def calculate_value
   self.total_deduction = self.pf+self.esi+self.share+self.te
end

end
