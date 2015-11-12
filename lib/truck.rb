require_relative 'box'
require_relative "capacity_module"

class Truck
  include Capacity

  attr_reader :array
  def initialize(capacity)
    @capacity = capacity
    @array = []
  end

end
