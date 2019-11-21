class RemoveDistributionidFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :distribution_id, :integer
  end
end
