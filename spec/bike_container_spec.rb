require 'bike_container'

shared_examples 'a bike container' do

    let(:bike)    { Bike.new            }
    let(:holder)  { described_class.new }

	it "can accept a bike" do
		expect(holder.bikes.count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

	it "can release a bike" do
			bike2 = Bike.new
			holder.dock(bike2)
			holder.dock(bike)
			expect(holder.bikes).to eq [bike2, bike]
			holder.release(bike2)
			expect(holder.bikes).to eq [bike]
			# expect(station.bike_count).to eq(0)
	end

	it "it knows if there are available bikes" do
		bike = Bike.new
		bike2 = Bike.new
		bike2.break!
		holder.dock(bike)
		holder.dock(bike2)
		expect(holder.bikes).to eq [bike, bike2]
		expect(holder.working_bikes).to eq [bike]
	end

end
