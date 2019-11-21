class AddDistributionIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :distribution_id, :integer
  end
end
