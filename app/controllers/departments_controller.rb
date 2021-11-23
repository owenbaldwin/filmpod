class DepartmentsController < ApplicationController
  before_action :get_film, only: [:new, :create]

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
    @department.film = @film
    if @department.save
      redirect_to films_path(@film)
    else
      render :new
    end
  end

  def show
    @department = Department.find(params[:id])
    @tasks = @department.tasks
  end

  private

  def get_film
    @film = Film.find(params[:film_id])
  end

  def department_params
    params.require(:department).permit(:name)
  end
end
