class Cars
  include Company

  NUMBER_FORMAT = /^\d{2}$/
  attr_accessor :number, :capacity, :occupied

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

  def occupy
    @occupied ||= 0
    @occupied += 1
  end

  def available
    @occupied ||= 0
    capacity - @occupied
  end

  private

  def validate!
    raise "Number can't be nil" if number.nil?
    raise 'Wrong number. Format should be: xx' if number !~ NUMBER_FORMAT
    true
  end
end
