class CargoTrain < Train
  protected

  def car_allowed?(car)
    car.class == CargoCar
  end
end
