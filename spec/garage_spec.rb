require 'garage'
require 'bike_container'

describe Garage do

	let(:garage) 			 { Garage.new }
	let(:broken_bike)  { Bike.new   }
	let(:working_bike) { Bike.new   }

	it 'can fix a bike once it is docked' do
		broken_bike.break!
		expect(garage.accept!(broken_bike)).to eq(working_bike)
	end

	it 'has a working bike once the bike is repaired' do
		garage.accept!(bike)
		expect(garage.accept!(bike)).to eq(working_bike)

	end
end