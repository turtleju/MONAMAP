class CreateHolidays < ActiveRecord::Migration[5.2]
  def change
    create_table :holidays do |t|
      t.string :begin
      t.string :end
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
