require_relative 'box'

class Truck
  attr_reader :boxes
  def initialize(capacity)
    @capacity = capacity
    @boxes = []
  end

  def full?
    boxes.length >= 20
  end

  def add(first_name, last_name)
    roommate = Box.new(first_name, last_name)
    boxes << roommate
  end

  def remove(first_name, last_name)
    boxes.delete_if { |box| box.first_name == first_name && box.last_name == last_name }
  end

end
