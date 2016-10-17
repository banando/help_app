json.extract! job_seeker, :id, :username, :password, :first_name, :last_name, :email, :state, :city, :bio, :portfolio, :social_media, :rating, :comments, :interests, :created_at, :updated_at, :skills
json.url job_seeker_url(job_seeker, format: :json)
