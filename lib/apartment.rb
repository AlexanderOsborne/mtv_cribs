class Apartment
  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms,
              :renter


  def initialize(data)
    @number = data[:number]
    @monthly_rent = data[:monthly_rent]
    @bathrooms = data[:bathrooms]
    @bedrooms = data[:bedrooms]
    @renter = renter
  end

  def add_renter(person)
    @renter = person
  end
end
