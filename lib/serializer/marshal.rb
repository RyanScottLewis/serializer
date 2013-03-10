require 'serializer/interface'

module Serializer
  
  # An interface for the Ruby Marshal class.
  class Marshal < Interface
    
    # @param object The object to serialize.
    # @param [Hash, #to_hash, #to_h] options The options to pass to the serializer's interface.
    def dump(object, options={})
      ::Marshal.dump(object)
    end
    
    # @param object The object to deserialize.
    # @param [Hash, #to_hash, #to_h] options The options to pass to the serializer's interface.
    def load(object, options={})
      ::Marshal.load(object)
    end
    
    Interface.register(self)
    
  end
  
end
