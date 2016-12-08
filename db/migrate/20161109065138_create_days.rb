class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.string :date
      t.text :description
      t.integer :distance

      t.timestamps
    end
  end
end
