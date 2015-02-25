class Attendance < ActiveRecord::Base
belongs_to :employee
has_many :sals

  attr_accessible :attend_day, :cl, :el, :lop, :od, :sl, :wday, :employee_id, :sals_id, :sals_attributes

before_save :set_default_value
  def set_default_value
            self.wday = 26 
  end

before_save :calculate_day
  def calculate_day
      self.attend_day = self.wday-self.el-self.cl-self.sl
  end
end
