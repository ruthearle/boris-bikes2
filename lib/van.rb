require_relative 'bike_container'
require_relative 'unique_number_generator'

class Van

  include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
  end

end
