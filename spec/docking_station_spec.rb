require 'docking_station'
require 'bike_container'
require 'bike'

describe DockingStation do

  it_behaves_like 'a bike container'

  let(:station) { DockingStation.new }
  let(:bike)    { Bike.new           }

end
