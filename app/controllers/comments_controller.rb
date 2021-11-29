class CommentsController < ApplicationController

  def create
    @submission = Submission.find(params[:submission_id])
    @comment = Comment.new(comment_params)
    @comment.submission = @submission
    @comment.user = current_user
    if @comment.save
      SubmissionChannel.broadcast_to(
        @submission,
        render_to_string(partial: "comment", locals: {comment: @comment})
      )
      redirect_to submission_path(@submission, anchor: "comment-#{@comment.id}")
    else
      render "submissions/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
