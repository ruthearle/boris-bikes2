require_relative 'unique_number_generator'

module BikeContainer

include UniqueNumberGenerator

DEFAULT_CAPACITY = 10


	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@location = location_number_generator
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

end
