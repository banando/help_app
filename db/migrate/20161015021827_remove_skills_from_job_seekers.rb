class RemoveSkillsFromJobSeekers < ActiveRecord::Migration[5.0]
  def change
    remove_column :job_seekers, :skills, :string
  end
end
