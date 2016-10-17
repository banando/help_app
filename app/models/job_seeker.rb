class JobSeeker < ApplicationRecord
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :job
  has_and_belongs_to_many :employer
end
