class CreateEmployers < ActiveRecord::Migration[5.0]
  def change
    create_table :employers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :location
      t.text :bio
      t.string :company_name
      t.string :industy
      t.string :company_website
      t.string :city
      t.string :social_media_links

      t.timestamps
    end
  end
end
