class CreateAbsences < ActiveRecord::Migration[5.2]
  def change
    create_table :absences do |t|
      t.string :date
      t.boolean :gift, default: false
      t.boolean :collect, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
