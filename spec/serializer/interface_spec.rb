require 'spec_helper'
require 'serializer/interface'
require 'serializer/mechanism'

describe Serializer::Interface do
  
  describe '#initialize' do
    
    it 'should raise an error when an instance or subclass of Serializer::Mechanism is not passed as an argument' do
      expect { described_class.new(Object.new) }.to raise_error(Serializer::InvalidMechanismError)
      expect { described_class.new(Serializer::Mechanism.new(format: :marshal)) }.not_to raise_error#(Serializer::InvalidMechanismError)
    end
    
  end
  
end
