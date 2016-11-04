class AddEmployerIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :employer_id, :integer
  end
end
