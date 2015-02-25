class AttendancesController < ApplicationController

 def new
  @attendance = Attendance.new
  @attendance.employee_id = params[:id]
 end

 def create
  @attendance = Attendance.new(params[:attendance]) 
   if @attendance.save
   redirect_to attendances_path(@attendance)
   else
    render new
   end
 end 

 def edit
 @attendance = Attendance.find(params[:id])
 end

 def index
  @attendances = Attendance.all
 end 


 def update
  @attendance = Attendance.find(params[:id])
   if @attendance.update_attributes(params[:attendance])
    flash[:success] = "updated successfully"
    redirect_to employee_path(@attendance)
    else
    flash[:alert] = "failed"
    render 'edit'
   end
 end

end
