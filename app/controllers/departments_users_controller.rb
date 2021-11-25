class DepartmentsUsersController < ApplicationController
  before_action :find_department, only: [:new, :create]
  def new
    # @user = User.find(params[:user_id])
    # @department = Department.find(params[:department_id])
    @departments_user = DepartmentsUser.new
  end

  def create
    @departments_user = DepartmentsUser.new(grant_params)
    raise
    @department = Department.find(params[:department_id])
    # @departments_user.department = @department
    if @departments_user.save
      redirect_to department_path(@department)
    else
      render :new
    end
  end

  private

  def find_department
    @department = Department.find(params[:department_id])
  end

  def grant_params
    params.require(:departments_user).permit(:user_id, :department_id)
  end
end
