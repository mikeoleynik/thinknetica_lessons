module Accessors
  def attr_accessor_with_history(*names)
    history = []
    names.each do |name|
      var_name = "@#{name}".to_sym
      var_name_history = "@#{name}_history".to_sym
      define_method(name) { instance_variable_get(var_name) }
      define_method("#{name}_history".to_sym) do
        instance_variable_get(var_name_history)
      end
      define_method("#{name}=".to_sym) do |value| 
        instance_variable_set(var_name, value)
        instance_variable_set(var_name_history, history << value)
      end
    end # сеттер сохраняет все значения инстанс-переменной в _history а геттер выдает
  end  # разделить на несколько методов

  def strong_attr_acessor(name, class)
    define_method(name) { instance_variable_get(var_name) }
    define_method("#{name}=".to_sym) { |value| instance_variable_set(var_name, value) }
    raise ldskfjlskd if # Если тип отличается от того, который указан вторым параметром
    # ||= if если тип совпадает 
  end
end
