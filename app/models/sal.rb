class Sal < ActiveRecord::Base
belongs_to :employee
belongs_to :attendance
belongs_to :deduct

register_currency :inr

monetize :basic_paisa, :cca_paisa, :da_paisa, :exp_paisa, :hra_paisa, :spl_paisa, :total_paisa, :net_sal_paisa, :gross_paisa
 
attr_accessible :basic_currency, :cca_currency, :da_currency, :exp_currency, :hra_currency, :spl_currency, :total_currency, :basic_paisa, :cca_paisa, :da_paisa, :exp_paisa, :hra_paisa, :spl_paisa, :total_paisa, :employee_id, :gross_currency, :net_sal_currency
attr_accessor :lop, :total_deduction
attr_accessible :lop, :total_deduction

before_save :calculate_total 
  def calculate_total
    self.total_paisa = self.basic_paisa+self.da_paisa+self.hra_paisa+self.cca_paisa+self.spl_paisa+self.exp_paisa
  end

  before_save :calculate_gross
  def calculate_gross
  	self.gross_paisa = self.total_paisa-attendance.lop
  end

end