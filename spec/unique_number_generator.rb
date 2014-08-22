require 'unique_number_generator'

shared_examples 'unique number generator' do

	let(:object)    { described_class.new }


	it "bike can have a default serial number" do
    # i am expecting my bike to have a serial number
    expect(object.serial_number).to match(/^\w{3}\s\d{3}-\d{2}-\d{5}/)
  end


	it "van can have a default location number" do
    # i am expecting my bike to have a serial number
    expect(object.location_number).to match(/^\w{2}\s-\d{2}-\d{5}/)
  end



end
