class UsersController < ApplicationController
  def show
    @user = current_user
    @films = @user.films
  end
end
