module Validation
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def validate(name, *args)
      @validates ||= {}
      @validates[name] = *args
      puts "validate #{@validates}"
    end
  end

  module InstanceMethods
    def validate!
      valid_vars = self.class.instance_variable_get("@validates")
      puts "validate! #{valid_vars}"
      valid_vars.each do |name, args|
        @name_value = instance_variable_get("@#{name}")
        @param = args[1]
        send args[0]
      end
    end

    def valid?
      validate!
    rescue RuntimeError
      false
    end

    def presence
      fail 'Error value is nil' if @name_value.nil?
      fail 'Error value is empty' if @name_value.empty?
      true
    end

    def format
      fail "Error format #{@param}" if @name_value !~ @param
      true
    end

    def type
      fail "Error type #{@param}" unless @name_value.is_a?(@param)
      true
    end
  end
end