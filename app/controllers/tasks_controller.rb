class TasksController < ApplicationController
  before_action :get_department, only: [:new, :create]

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.department = @department
    @task.user = current_user
    if @task.save
      redirect_to department_path(@department)
    else
      render :new
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def index
    @tasks = Task.all
  end



  private

  def get_department
    @department = Department.find(params[:department_id])
  end

  def task_params
    params.require(:task).permit(:title, :content, :status)
  end

end
