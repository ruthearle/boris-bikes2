require_relative 'unique_numbers'

class Bike

  include UniqueNumbers

	def initialize(options = {})
		@working = true
    super
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
