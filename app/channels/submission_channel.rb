class SubmissionChannel < ApplicationCable::Channel
  def subscribed
    @submission = Submission.find(params[:id])
    # stream_for submission
    stream_from "submission_channel"
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
