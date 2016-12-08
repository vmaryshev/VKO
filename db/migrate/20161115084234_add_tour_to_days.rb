class AddTourToDays < ActiveRecord::Migration[5.0]
  def change
    add_column :days, :tour_id, :integer
  end
end
