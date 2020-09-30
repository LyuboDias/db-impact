class StaffController < ApplicationController

  def index
    @staff = Staff.all
  end

  def show
    @staff = Staff.find(params[:id])
  end

  private

  def strong_params
    params.require(:staff).permit(:f_name, :l_name, :job_title, :bio, :email, :phone)
  end
end
