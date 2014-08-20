require 'docking_station'

describe DockingStation do

let(:station) { DockingStation.new }
let(:bike)    { Bike.new           }

	it "can accept a bike" do
		expect(station.bikes.count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it "can release a bike" do
		bike2 = Bike.new
		station.dock(bike2)
		station.dock(bike)
		expect(station.bikes).to eq [bike2, bike]
		station.release(bike2)
		expect(station.bikes).to eq [bike]
		# expect(station.bike_count).to eq(0)
	end

	it "it knows if there are available bikes" do
		bike = Bike.new
		bike2 = Bike.new
		bike2.break!
		station.dock(bike)
		station.dock(bike2)
		expect(station.bikes).to eq [bike, bike2]
		expect(station.working_bikes).to eq [bike]
	end
end