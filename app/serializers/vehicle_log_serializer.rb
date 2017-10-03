class VehicleLogSerializer < ActiveModel::Serializer
  attributes :id, :mileage, :gas_price, :repair_type, :total_price, :date, :receipt
  has_one :vehicle
end
