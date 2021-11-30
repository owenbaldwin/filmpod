class SubmissionsController < ApplicationController
  before_action :get_task, only: [:new, :create]

  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new(submission_params)
    @submission.task = @task
    @submission.user = current_user
    if @submission.save
      redirect_to submission_path(@submission)
    else
      render :new
    end
  end

  def show
    @submission = Submission.find(params[:id])
    @task = @submission.task
    @submission.user = current_user
    @comments = Comment.new
  end

  def edit
    @submission = Submission.find(params[:id])
  end

  def update
    @submission = Submission.find(params[:id])
    @submission.update(submission_params)
    @task = @submission.task
    redirect_to submission_path(@submission)
  end

  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy
    @task = @submission.task
    redirect_to task_path(@task)
  end

  private

  def get_task
    @task = Task.find(params[:task_id])
  end

  def submission_params
    params.require(:submission).permit(:title, :content, :photo, :status)
  end

end
