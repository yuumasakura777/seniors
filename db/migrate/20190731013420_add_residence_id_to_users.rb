class AddResidenceIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :residence_id, :integer
  end
end
