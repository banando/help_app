class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :skill_1
      t.string :skill_2
      t.string :skill_3
      t.string :skill_4
      t.string :skill_5
      t.string :skill_6
      t.string :skill_7
      t.string :skill_8

      t.timestamps
    end
  end
end
