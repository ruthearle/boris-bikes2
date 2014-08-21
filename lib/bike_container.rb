module BikeContainer

DEFAULT_CAPACITY = 10

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
