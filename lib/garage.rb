class Garage

	include BikeContainer

	def accept!(bike)
		bike.fix!
		dock(bike)
	end
end