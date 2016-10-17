class Employer < ApplicationRecord
  has_many :jobs
  has_and_belongs_to_many :job_seeker
end
