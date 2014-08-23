module UniqueNumbers


	 def serial_number_generator
    sn = ("A".."Z").to_a.sample(3).join
    indicative1 =(0..9).to_a.sample(3).join
    indicative2 =(0..9).to_a.sample(2).join
    indicative3 =(0..9).to_a.sample(5).join
    "#{sn} #{indicative1}-#{indicative2}-#{indicative3}"
  end

	def initialize(options = {})
		 @serial_number = options.fetch(:serial_number, serial_number_generator)
	end

	def serial_number
    @serial_number    
  end
end