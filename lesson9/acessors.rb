module Accessors
  def attr_accessor_with_history (*names)
    names.each do |name|
      history = []
      name_var = "@#{name}".to_sym
      name_var_history = "@#{name}_history".to_sym
      define_method(name) { instance_variable_get(name_var) }
      define_method("#{name}_history".to_sym ) do
        instance_variable_get(name_var_history)
      end
      define_method("#{name}=".to_sym) do |value|
        instance_variable_set(name_var, value)
        instance_variable_set(name_var_history, history << value)
      end
    end
  end

  def strong_attr_accessor(name, type)
    name_var = "@#{name}"
    define_method(name) { instance_variable_get(name_var) }
    define_method("#{name}=".to_sym) do |value|
      fail "ghghgh" unless value.is_a?(type)
      instance_variable_set(name_var, value)
    end
  end
end
