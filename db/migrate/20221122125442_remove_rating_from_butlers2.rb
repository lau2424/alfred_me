class RemoveRatingFromButlers2 < ActiveRecord::Migration[7.0]
  def change
    remove_column :butlers, :rating, :integer
    remove_column :butlers, :content, :text
  end
end
