class CreateVehicleLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicle_logs do |t|
      t.references :vehicle, foreign_key: true
      t.integer :mileage
      t.decimal :gas_price
      t.string :repair_type
      t.decimal :total_price
      t.date :date
      t.string :receipt

      t.timestamps
    end
  end
end
