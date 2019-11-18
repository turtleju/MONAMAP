class CreateSubscriptionOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscription_options do |t|
      t.references :subscription, foreign_key: true
      t.references :option, foreign_key: true
      t.date :ends_at

      t.timestamps
    end
  end
end
