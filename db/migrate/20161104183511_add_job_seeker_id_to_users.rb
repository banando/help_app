class AddJobSeekerIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :job_seeker_id, :integer
  end
end
