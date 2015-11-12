require_relative "house"
require_relative "occupant"
require_relative "capacity_module"

module Capacity
  def full?(max_capacity)
    array.length >= max_capacity
  end

 def add(object)
    array << object
 end

   def remove(object)
     array.delete_if { |item| item.first_name == object.first_name && item.last_name == object.last_name }
   end
 end

class Apartment < House

  include Capacity

  attr_reader :address, :city, :zip_code, :asking_price, :rent, :lease_start_date, :lease_end_date
  attr_accessor :array
  def initialize(address, city = "Boston", zip_code = "02108", asking_price = "$400,000", rent, lease_start_date, lease_end_date)
    super(asking_price)
    @rent = rent
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @array = []
  end
end
