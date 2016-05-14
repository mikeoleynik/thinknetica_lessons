class Cars
  include Company 
  include Occupancy

  NUMBER_FORMAT = /^\d{2}$/
  attr_accessor :number, :capacity

  def initialize(number, capacity)
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
    raise "Wrong number. Format should be: xx" if number !~ NUMBER_FORMAT
    true
  end

end