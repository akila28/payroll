class DeductsController < ApplicationController
 def new
  @deduct = Deduct.new
  @deduct.employee_id = params[:id]
 end

 def create
  @deduct = Deduct.new(params[:deduct])
   if @deduct.save
     redirect_to  employees_path(@deduct)
   else
     render "new"
   end 
 end

 def edit
  @deduct = Deduct.find(params[:id])
 end

 def update
  @deduct = Deduct.find(params[:id])
   if @deduct.update_attributes(params[:deduct])
    flash[:success] = "updated successfully"
    redirect_to employee_path(@deduct)
    else
    flash[:alert] = "failed"
    render 'edit'
   end
 end

end
