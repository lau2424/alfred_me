class AddRatingContentToButler < ActiveRecord::Migration[7.0]
  def change
    add_column :butlers, :rating, :integer
    add_column :butlers, :content, :text
  end
end
