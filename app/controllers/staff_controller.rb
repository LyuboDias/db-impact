class StaffController < ApplicationController

  def index
    @staff = Staff.all 
  end

  def show
    @staff = Staff.find(params[:id])
  end

  def new
    @staff = Staff.new
  end
  
  def create
    @staff = Staff.new(strong_params)
    if @staff.save!
      redirect_to staff_index, notice: "Staff member was saved"
    else
      render :new
    end
  end
  
  private

  def strong_params
    params.require(:staff).permit(:f_name, :l_name, :job_title, :bio, :email, :phone, :image)
  end
end
