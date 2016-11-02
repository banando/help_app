class CommentsController < ApplicationController
  def create
    @job_seeker = JobSeeker.find(params[:job_seeker_id])
    @commment = @job_seeker.comments.create(comment_params)

    redirect_to job_seeker_path(@job_seeker)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)

  end
end
