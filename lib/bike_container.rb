require_relative 'unique_numbers'

module BikeContainer

include UniqueNumbers

  DEFAULT_CAPACITY = 10

  def initialize(options = {})
    super
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def bikes
    @bikes ||= []
  end

  def bike_count
    bikes.count
  end

  def dock(bike)
    bikes << bike
  end

	def release(bike)
		bikes.delete(bike)
	end

	def working_bikes
		bikes.select{ |bike| bike.working? }
	end

	def capacity
		@capacity
	end

	def capacity=(value)
		@capacity = value
	end

  def full?
    bike_count == capacity
  end

end
