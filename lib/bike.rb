require_relative 'unique_number_generator'

class Bike

	include UniqueNumberGenerator

	def initialize(serial_number: serial_number_generator)
		@working = true
		@serial_number = serial_number
	end

  def working?
  	@working 
  end

   def break!
   	@working = false
   end

   def fix!
   	@working = true
   end

   def serial_number
		@serial_number   	
   end

end
