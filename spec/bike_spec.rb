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

  it "can have a default serial number" do
    # i am expecting my bike to have a serial number
    expect(bike.serial_number).to eq("12345")
  end

  it "be set with a serial number" do
    bike = Bike.new({:serial_number => "11122"})
    expect(bike.serial_number).to eq("11122")
  end
end
