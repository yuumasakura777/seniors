class AddResidenceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :residence, :integer, :limit=>46
  end
end
