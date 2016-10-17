class Job < ApplicationRecord
  belongs_to :employer
  has_and_belongs_to_many :skill
  has_and_belongs_to_many :job_seeker
end
