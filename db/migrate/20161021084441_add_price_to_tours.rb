class AddPriceToTours < ActiveRecord::Migration[5.0]
  def change
    add_column :tours, :price, :integer
  end
end
