class AddsForeignKeys < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :employer_id, :integer
    add_column :jobs, :job_seeker_id, :integer
    add_column :jobs, :skill_id, :integer
    add_column :employers, :job_id, :integer
    add_column :employers, :job_seeker_id, :integer
    add_column :job_seekers, :job_id, :integer
    add_column :job_seekers, :employer_id, :integer
    add_column :skills, :job_id, :integer
    add_column :skills, :job_seeker_id, :integer
  end
end
