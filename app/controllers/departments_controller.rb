class DepartmentsController < ApplicationController
    # def new
    #   @department = Department.new
    # end

  def new
    @film = Film.find(params[:film_id])
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
    @film = Film.find(params[:film_id])
    @department.film = @film
    if @department.save
      redirect_to films_path(@film)
    else
      render :new
    end
  end

  def show
    @department = Department.find(params[:id])
  end

  private

  def department_params
    params.require(:department).permit(:name)
  end
end
