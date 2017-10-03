class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.references :user, foreign_key: true
      t.string :make
      t.string :model
      t.integer :year
      t.integer :mileage

      t.timestamps
    end
  end
end
