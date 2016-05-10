# coding: utf-8

class Cars
  include Company 
  NUMBER_FORMAT = /^\d{2}$/
  attr_accessor :number, :type_car, :capacity

  def initialize(number, type_car, capacity)
    @number = number
    @capacity = capacity
    validate! 
  end

def valid?
    validate!
  rescue
    false
end

private
def validate!
  raise "Number can't be nil" if number.nil?
  raise "Type can't be nil" if type_car.nil? 
  raise "Type should be cargo or passenger" if type_car == :cargo || type_car == :passenger
  raise "Wrong number. Format should be: xx" if number !~ NUMBER_FORMAT
  true
end

 end