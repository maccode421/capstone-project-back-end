# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

john = User.create({ email: 'm@m.com', password: 'm' })

vehicles = Vehicle.create({ user_id: john.id, make: 'Ford', model: 'Mustang', year: 1955, mileage: 100000 })

vehicle_logs = VehicleLog.create({ vehicle_id: vehicles.id, mileage: 101000, gas_price: 2.5, repair_type: 'change brakes', total_price: 89.9, date: '7-7-2017', receipt: 'www.go.com' })
