require 'serializer/error'

module Serializer
  module Errors
    
    # Raised when a Mechanism's format is set to an invalid valid
    class InvalidOptionsError < Error
      
      # @param options The object to check to see if it is a valid options for Mechanism.
      # @raise [InvalidOptionsError] When the options is not valid.
      def self.check(options)
        raise self unless options.is_a?(Hash) || options.respond_to?(:to_hash) || options.respond_to?(:to_h)
      end
      
      # @return [String] The error message.
      def to_s
        '`options` must be a Hash or respond to :to_hash or :to_h'
      end
      
    end
    
  end
end
