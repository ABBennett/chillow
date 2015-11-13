require_relative "house"
require_relative "occupant"
require_relative "capacity_module"


class Apartment < House

  include Capacity

  attr_reader :rent, :lease_start_date, :lease_end_date
  attr_accessor :array
  def initialize(address, city = "Boston", zip_code = "02108", asking_price = "$400,000", rent, lease_start_date, lease_end_date)
    super(asking_price)
    @rent = rent
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @array = []
  end
end
