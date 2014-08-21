require_relative 'bike_container'

	
class DockingStation

	# this gives us all the methods that used to be in this class
	include BikeContainer

	def initialize(options = {})
		# self.capacity is calling the capacity=() method
		# (note the equals sign) defined in BikeContainer
		# capacity (the second arguement to fetch()) is calling
		# the capacity() method in BikeContainer
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end



end
