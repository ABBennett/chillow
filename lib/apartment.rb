require_relative "house"
require_relative "occupant"
class Apartment < House
  attr_reader :address, :city, :zip_code, :asking_price, :rent, :lease_start_date, :lease_end_date
  attr_accessor :occupants
  def initialize(address, city = "Boston", zip_code = "02108", asking_price = "$400,000", rent, lease_start_date, lease_end_date)
    super(asking_price)
    @rent = rent
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @occupants = []
  end

  def full?
    occupants.length >= 4
  end

  def add_roommate(first_name, last_name)
    roommate = Occupant.new(first_name, last_name)
    occupants << roommate
  end

  def remove_roommate(first_name, last_name)
    occupants.delete_if { |occupant| occupant.first_name == first_name && occupant.last_name == last_name }
  end

end
