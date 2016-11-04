class JobSeeker < ApplicationRecord
  has_one :skills
  belongs_to :user
end
