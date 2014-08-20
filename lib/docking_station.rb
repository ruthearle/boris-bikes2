class DockingStation

	attr_reader :bikes

	def initialize
		@bikes = []
	end

	def bike_count
		@bikes.count
	end

	def dock(bike)
		@bikes << bike
	end

	def release(bike)
		@bikes.delete(bike)
	end

	def working_bikes
		@bikes.select{ |bike| bike.working? }
	end

end