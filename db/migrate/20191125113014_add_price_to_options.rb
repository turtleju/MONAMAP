class AddPriceToOptions < ActiveRecord::Migration[5.2]
  def change
    add_monetize :options, :price, currency: { present: false }
  end
end
