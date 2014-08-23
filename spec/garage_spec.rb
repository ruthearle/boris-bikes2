require 'garage'
require 'bike_container'

describe Garage do

	it 'can fix a bike once it is docked' do
		garage = Garage.new
		bike = Bike.new
		bike.break!
		garage.dock(bike)
		expect(garage.repair(bike)).to eq(bike.working?)
	end
end