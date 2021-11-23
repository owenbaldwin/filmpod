class FilmsController < ApplicationController
  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)
    if @film.save
      redirect_to film_path(@film)
    else
      render :new
    end
  end

  def show
    @film = Film.find(params[:id])
  end
  private

  def film_params
    params.require(:film).permit(:title, :synopsis, :genre, :estimated_release_date)
  end

end
