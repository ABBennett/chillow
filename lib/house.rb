require_relative "dwelling"
class House < Dwelling
  attr_reader :asking_price
  def initialize(address, city = "Boston", zip_code = "02108", asking_price = "$400,000")
    super(address, city, zip_code)
    @asking_price = asking_price

  end

end
