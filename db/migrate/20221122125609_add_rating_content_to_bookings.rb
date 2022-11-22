class AddRatingContentToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :rating, :integer
    add_column :bookings, :content, :text
  end
end
