module Company

  def company(name)
    @company_name = name
  end

  attr_accessor :company_name

end


# Создать модуль, который позволит указывать название компании-производителя и получать его. 
# Подключить модуль к классам Вагон и Поезд