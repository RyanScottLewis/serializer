require 'serializer/error'

module Serializer
  module Errors
    
    # Raised when a Mechanism's format is set to an invalid valid
    class InvalidFormatError < Error
      
      # @param format The object to check to see if it is a valid format.
      # @raise [InvalidFormatError] When the format is not valid.
      def self.check(format)
        raise self unless [:marshal, :json].include?(format)
      end
      
      # @return [String] The error message.
      def to_s
        '`format` must be one of `:marshal` or `:json`'
      end
      
    end
    
  end
end
