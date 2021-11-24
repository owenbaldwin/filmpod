class GrantsController < ApplicationController
  # def new
  #   @film = Film.find(params[:film_id])
  #   @grant = Grant.new
  # end

  def index
    @film = Film.find(params[:film_id])
    @grants = @film.grants
    @grant = Grant.new
  end

  def create
    @grant = Grant.new(grant_params)
    @film = Film.find(params[:film_id])
    @grant.film = @film
    if @grant.save
      redirect_to film_grants_path
    else
      render :index
    end
    # Stay on page to add new users until you decide to click on 'next' button in view
  end

  def grant_params
    params.require(:grant).permit(:user_id, :rank_level)
  end
end
