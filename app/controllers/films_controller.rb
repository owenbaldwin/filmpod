class FilmsController < ApplicationController
  def index
    @films =Film.all
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)
    if @film.save!
      Grant.create!(user: current_user, film: @film, rank_level: "Direction", department: Department.first)
      redirect_to film_path(@film)
    else
      render :new
    end
  end

  def show
    @film = Film.find(params[:id])
    @departments = @film.departments
    @users = @film.users
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])
    @film.update(film_params)

    redirect_to film_path(@film)
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy

    redirect_to user_path
  end

  private

  def film_params
    params.require(:film).permit(:title, :synopsis, :genre, :estimated_release_date, :photo)
  end

end
