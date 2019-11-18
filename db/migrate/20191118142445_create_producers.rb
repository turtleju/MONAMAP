class CreateProducers < ActiveRecord::Migration[5.2]
  def change
    create_table :producers do |t|
      t.string :first_name
      t.string :last_name
      t.string :description
      t.string :address
      t.string :photo_url

      t.timestamps
    end
  end
end
