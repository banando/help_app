class JobSeekersController < ApplicationController
  before_action :set_job_seeker, only: [:show, :edit, :update, :destroy]

  # GET /job_seekers
  # GET /job_seekers.json
  def index
    @job_seekers = JobSeeker.all
  end

  # GET /job_seekers/1
  # GET /job_seekers/1.json
  def show
  end

  # GET /job_seekers/new
  def new
    @job_seeker = JobSeeker.new
    @skill = Skill.new
  end

  # GET /job_seekers/1/edit
  def edit
  end

  # POST /job_seekers
  # POST /job_seekers.json
  def create
    @job_seeker = JobSeeker.new(job_seeker_params)
    @job_seeker = DateTime.now
    @skill = Skill.new(skill_params)
    @job_seeker.save

    # if @job_seeker.save
    #   @job_seeker.skill.new(skill_params)
    #   re_direct_to_root_url
    # end

    respond_to do |format|
      if @job_seeker.save
        @job_seeker.skill.new(skill_params)
        format.html { redirect_to @job_seeker, notice: 'Job seeker was successfully created.' }
        format.json { render :show, status: :created, location: @job_seeker }
      else
        format.html { render :new }
        format.json { render json: @job_seeker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_seekers/1
  # PATCH/PUT /job_seekers/1.json
  def update
    respond_to do |format|
      if @job_seeker.update(job_seeker_params)
        format.html { redirect_to @job_seeker, notice: 'Job seeker was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_seeker }
      else
        format.html { render :edit }
        format.json { render json: @job_seeker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_seekers/1
  # DELETE /job_seekers/1.json
  def destroy
    @job_seeker.destroy
    respond_to do |format|
      format.html { redirect_to job_seekers_url, notice: 'Job seeker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_seeker
      @job_seeker = JobSeeker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_seeker_params

      params.require(:job_seeker).permit(:username, :password, :first_name, :last_name, :email, :state, :city, :bio, :portfolio, :social_media, :rating, :comments, :interests, :skills_id)
    end
