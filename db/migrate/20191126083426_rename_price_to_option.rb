class RenamePriceToOption < ActiveRecord::Migration[5.2]
  def change
    remove_column :options, :price, :string
    add_column :options, :price_cents, :integer
  end
end
