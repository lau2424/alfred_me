class CreateReviewtables < ActiveRecord::Migration[7.0]
  def change
    create_table :reviewtables do |t|
      t.string :content
      t.integer :rating
      t.references :user, null: false, foreign_key: true
      t.references :butler, null: false, foreign_key: true

      t.timestamps
    end
  end
end
