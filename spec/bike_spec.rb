require 'bike'
require_relative 'unique_numbers_spec'

describe Bike do

  include_examples "a serial number" do

    let(:bike) { Bike.new }

    it 'is working when created' do
      expect(bike).to be_working
    end

    it "can be broken" do
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
  end
end
