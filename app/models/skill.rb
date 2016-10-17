class Skill < ApplicationRecord
  has_and_belongs_to_many :job_seeker
  has_and_belongs_to_many :job
end
