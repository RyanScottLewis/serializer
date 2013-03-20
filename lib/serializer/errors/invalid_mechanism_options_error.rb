require 'serializer/errors/base'

module Serializer
  module Errors
    
    # Raised when a Mechanism's format is set to an invalid valid
    class InvalidMechanismOptionsError < Base
      
      # @param options The object to check to see if it is a valid options for Mechanism.
      # @raise [InvalidOptionsError] When the options is not valid.
      def self.check(options)
        raise self unless options.has_key?(:format)
      end
      
      # @return [String] The error message.
      def to_s
        '`options` requires key `:format`'
      end
      
    end
    
  end
end
