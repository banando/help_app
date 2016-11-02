class JobSeeker < ApplicationRecord
  has_one :skills
  has_many :comments
end
