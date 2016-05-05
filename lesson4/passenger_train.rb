require_relative "./train.rb"

class PassengerTrain < Train

 protected
  def car_allowed?(car)
  	car.class == PassengerCar
  end

end