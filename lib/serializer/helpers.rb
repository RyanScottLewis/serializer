require 'serializer/error'

module Serializer
  
  # Generic helper mixin.
  module Helpers
    
    protected
    
    # Validate a methods options. Attempts to convert the options to a hash using #to_hash 
    # or #to_h, unless the options object is already an instance or subclass of Hash.
    # 
    # @param [Hash, #to_hash, #to_h] options The object to convert into a Hash.
    # @return [Hash] options The object to converted into a Hash.
    def validate_options(options)
      raise Error, "'options' must be a Hash or respond to :to_hash or :to_h" unless options.is_a?(Hash) || options.respond_to?(:to_hash) || options.respond_to?(:to_h)
      options = options.to_hash rescue options.to_h unless options.is_a?(Hash)
      
      options
    end
    
  end
  
end