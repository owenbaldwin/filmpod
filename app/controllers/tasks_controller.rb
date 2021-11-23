class TasksController < ApplicationController
  before_action :get_department

  def index
    @tasks = @department.tasks
  end

  private

  def get_department
    @department = Department.find(params[:department_id])
  end

end
