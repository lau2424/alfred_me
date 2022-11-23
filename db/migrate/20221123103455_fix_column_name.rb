class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :end_start, :end_date
  end
end
