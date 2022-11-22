class CreateButlers < ActiveRecord::Migration[7.0]
  def change
    create_table :butlers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :category
      t.string :gender
      t.text :description

      t.timestamps
    end
  end
end
