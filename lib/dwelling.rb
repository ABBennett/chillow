class Dwelling
  attr_reader :address, :city, :zip_code
  def initialize(address, city = "Boston", zip_code = "02108")
    @address = address
    @city = city
    @zip_code = zip_code

  end

end
