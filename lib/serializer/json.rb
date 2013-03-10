require 'multi_json'
require 'serializer/interface'

module Serializer
  
  # An interface for the MultiJson interface.
  class Json < Interface

    # @param object The object to serialize.
    # @param [Hash, #to_hash, #to_h] options The options to pass to the serializer's interface.
    def dump(object, options={})
      options = validate_options(options)
      
      MultiJson.dump(object, options)
    end
    
    # @param object The object to deserialize.
    # @param [Hash, #to_hash, #to_h] options The options to pass to the serializer's interface.
    def load(object, options={})
      options = validate_options(options)
      
      MultiJson.load(object, options)
    end
    
    protected
    
    def validate_options(options)
      super

      options[:adapter] = mechanism.engine
    end
    
    Interface.register(self)
    
  end
  
end
