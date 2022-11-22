class AddPriceUrlToButler < ActiveRecord::Migration[7.0]
  def change
    add_column :butlers, :price, :string
    add_column :butlers, :url, :string
  end
end
