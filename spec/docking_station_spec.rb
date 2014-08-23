require 'docking_station'
require 'bike_container'

describe DockingStation do

  it_behaves_like 'a bike container'

  let(:station) { DockingStation.new(:capacity => 20) }

  it 'allows setting the default capacity on initialization' do
    expect(station.capacity).to eq(20)
  end

end
