class DepartmentsController < ApplicationController
  before_action :get_film, only: [:new, :create]

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
    @department.film = @film
    if @department.save
      redirect_to film_path(@film)
    else
      render :new
    end
  end

  def show
    @department = Department.find(params[:id])
    @tasks = @department.tasks
  end

  def edit
    @department = Department.find(params[:id])
  end

  def update
    @department = Department.find(params[:id])
    @department.update(department_path)

    redirect_to film_path(@film)
  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy

    redirect_to film_path(@film)
  end

  private

  def get_film
    @film = Film.find(params[:film_id])
  end

  # def get_department
  #   @department = Department.find(params[:id])
  # end

  def department_params
    params.require(:department).permit(:name)
  end

end
