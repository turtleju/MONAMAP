class AddDistributionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :distribution, foreign_key: true
  end
end
