class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :skills_needed_1
      t.string :skills_needed_2
      t.string :skills_needed_3
      t.string :skills_needed_4
      t.string :name
      t.string :company
      t.string :owner
      t.text :desc

      t.timestamps
    end
  end
end
