require "unique_numbers_spec"

class Location; include UniqueNumbers; end

shared_examples "a serial number" do

	describe UniqueNumbers do

		let(:bike)     { Bike.new     }
		let(:location) { Location.new }

		it "can have a default serial number" do
  	  # i am expecting my bike to have a serial number
  	    bike = Bike.new({:serial_number => "AAA 111-11-11111"})
  	    expect(bike.serial_number).to match(/^\w{3}\s\d{3}-\d{2}-\d{5}/)
 	   end

 	  #it "can have a default location number" do
 	  #	location = Location.new({:location => "AA 111-11-11111"})
 	  #	expect(location.location_number).to match(/^\w{2}\s\d{3}-\d{2}-\d{5}/)
		#end
	end
end
