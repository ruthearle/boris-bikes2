require_relative 'bike_container'
require_relative 'unique_numbers'

class DockingStation

# this gives us all the methods that used to be in this class
  include BikeContainer
  include UniqueNumbers

  def initialize(options = {})
	self.capacity = options.fetch(:capacity, capacity)
 	super
  end
end
