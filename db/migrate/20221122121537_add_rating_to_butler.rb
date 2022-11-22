class AddRatingToButler < ActiveRecord::Migration[7.0]
  def change
    add_column :butlers, :rating, :integer
  end
end
