require 'bike'

describe Bike do

    let(:bike) { Bike.new }

    it 'is working when created' do
      expect(bike).to be_working
    end

    it "can be broken" do
      # expect(bike).to be_working
      expect(bike.working?).to be true
      bike.break!
      expect(bike.working?).to be false
    end

    it "can be fixed" do
      bike.break!
      expect(bike.working?).to be false
      bike.fix!
      expect(bike.working?).to be true
    end


    it "bike can have a default serial number" do
    # i am expecting my bike to have a serial number
      bike = Bike.new({:serial_number => "DDD 111-11-11111"})
      expect(bike.serial_number).to match(/^\w{3}\s\d{3}-\d{2}-\d{5}/)
    end
  end
