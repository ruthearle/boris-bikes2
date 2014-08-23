require_relative 'bike_container'

class DockingStation

# this gives us all the methods that used to be in this class
  include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end
end
