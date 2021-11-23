class UsersController < ApplicationController
  def show
    @user = current_user
    @films = @user.films
  end

  def create
    if @user.save
      redirect_to user_path(current_user)
    end
    # REDIRECT TO PROFILE
  end
end
