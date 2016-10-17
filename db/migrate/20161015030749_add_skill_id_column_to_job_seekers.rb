class AddSkillIdColumnToJobSeekers < ActiveRecord::Migration[5.0]
  def change
    add_column :job_seekers, :skill_id, :integer
  end
end
