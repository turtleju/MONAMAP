class AddEmailTelToProducers < ActiveRecord::Migration[5.2]
  def change
    add_column :producers, :email, :string
    add_column :producers, :tel, :string
  end
end
