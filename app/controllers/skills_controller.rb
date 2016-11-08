class SkillsController < ApplicationController


def create
  @skill = @job_seeker.skills.new(skill_params)
  if @skill.save
    respond_to do |format|
      format.html { redirect_to @job_seeker, :notice => 'Updated Skills!' }
    end
  else
    respond_to do |format|
      format.html { redirect_to @job_seeker, :alert => 'Unable to load skills'}
end
end
end


private

def load_job_seeker
    @job_seeker = Job_seeker.find(params[:skill_id])
  end

  def skill_params
    params.require(:skill).permit(:skill_1, :skill_2, :skill_3, :skill_4)
end






end
