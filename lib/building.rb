require './lib/renter'
require './lib/apartment'
require 'pry'
class Building
  attr_reader :units, :renters, :rented_units

  def initialize
    @units = []
    @renters = []
    @rented_units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def add_renter(renter)
    @renters << renter.name
  end

  def average_rent
    rent = @units[:monthly_rent].sum
    rent / @units[:monthly_rent].size
  end

  def rented_units
    rented = @units.select do |unit|
      unit.renter.any?
    end
    @rented_units << rented
  end
end
