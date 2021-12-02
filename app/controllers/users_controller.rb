class UsersController < ApplicationController
  def show
    @user = current_user
    @films = @user.films
    @tasks = Task.all
    @recent_tasks = @tasks.last(5)
    @recentfilms = @films.last(3)
    @submissions = Submission.all
  end

  def create
    if @user.save
      redirect_to user_path(current_user)
    end
    # REDIRECT TO PROFILE
  end
end
