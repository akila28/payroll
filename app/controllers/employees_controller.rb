class EmployeesController < ApplicationController

 def new
  @employee = Employee.new
  @sal = @employee.sals.build
  @deduct = @employee.deducts.build
  @attendance = @employee.attendances.build
 end

 def create
  @employee = Employee.new(params[:employee])
   if @employee.save
     flash[:success] = "Welcome"
     redirect_to  employees_path(@employee)
   else
     flash[:alert] = "employee not added"
     render "new"
   end 
 end

 def index
  @employees = Employee.all
  @employees = Employee.where("emp_code LIKE ?", "%#{params[:search]}%").paginate(page: params[:page], per_page: 15)

 end 

 def show
  @employee = Employee.find(params[:id])
 end
 
 def edit
  @employee = Employee.find(params[:id])
 end

 def update
  @employee = Employee.find(params[:id])
   if @employee.update_attributes(params[:employee])
    flash[:success] = "updated successfully"
    redirect_to employees_path(@employee)
    else
    flash[:alert] = "failed"
    render 'edit'
   end
 end

 def destroy
  @employee = Employee.find(params[:id])
  @employee.destroy
  flash[:notice] = "employee has been deleted"
  redirect_to employees_path
 end
end

