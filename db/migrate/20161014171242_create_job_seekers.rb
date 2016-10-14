class CreateJobSeekers < ActiveRecord::Migration[5.0]
  def change
    create_table :job_seekers do |t|
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :state
      t.string :city
      t.text :bio
      t.string :portfolio
      t.string :social_media
      t.integer :rating
      t.text :comments
      t.text :interests

      t.timestamps
    end
  end
end
