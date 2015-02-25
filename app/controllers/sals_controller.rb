class SalsController < ApplicationController

 def new
  @sal = Sal.new

  @sal.employee_id = params[:id]

 end

 def create
  @sal = Sal.new(params[:sal])
   if @sal.save
    redirect_to employees_path(@sal)
   else
    render "new"
   end 
 end

 def index
  @sals = Sal.all
 end 

 def edit
  @sal = Sal.find(params[:id])
 end

 def update
   @sal = Sal.find(params[:id])
    if @sal.update_attributes(params[:sal])
      redirect_to employee_path(@sal)
    else
      render 'edit'
    end
 end

end
