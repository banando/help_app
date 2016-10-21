class SessionsController < ApplicationController
  def new

  end

  # def create
  #   job_seeker = Job_seeker.find_by(name: params[:name])
  #   if job_seeker and job_seeker.authentication(params[:password])
  #     sessions[:user_id] = user.id
  #   else
  #     alert:"please try again"
  #   end
  # end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, alert: "You have signed out"
  end
end
