class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :name
      t.string :price
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
