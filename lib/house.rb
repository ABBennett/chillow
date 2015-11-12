class House
  attr_reader :asking_price, :address, :city, :zip_code

  def initialize(address, city, zip_code)
    @address = address
    @city = city
    @zip_code = zip_code
    @asking_price = asking_price
  end

end

my_house = House.new("33 Harrison", "Boston", "02108")
puts my_house.address
