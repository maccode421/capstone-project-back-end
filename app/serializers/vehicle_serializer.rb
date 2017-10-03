class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :year, :mileage
  has_one :user_id
end
