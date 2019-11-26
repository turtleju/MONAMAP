class ChangeHolidaysToBeDates < ActiveRecord::Migration[5.2]
  def change
    remove_column :holidays, :begin
    remove_column :holidays, :end
    add_column :holidays, :begin, :date
    add_column :holidays, :end, :date
  end
end
