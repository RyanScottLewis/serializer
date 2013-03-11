require 'spec_helper'

module MyLibrary
  class DummyInterface < Serializer::Interface; end
  class NonInterface; end
end

describe Serializer::Interface do
  
  let!(:valid_mechanism) { Serializer::Mechanism.new(format: :marshal) }
  
  describe '.interfaces' do
    
    it 'should be a Hash' do
      described_class.interfaces.should be_a(Hash)
    end
    
  end
  
  describe '.register' do
    
    it 'should add the interface class given to the .interfaces Hash' do
      described_class.interfaces[:dummy_interface].should == nil
      described_class.register(MyLibrary::DummyInterface)
      described_class.interfaces[:dummy_interface].should == MyLibrary::DummyInterface
    end
    
    it 'should raise an error when a Serializer::Interface is not passed as an argument' do
      expect { described_class.register(MyLibrary::NonInterface) }.to raise_error(Serializer::InvalidInterfaceError)
    end
    
  end
  
  describe '#initialize' do
    
    it 'should raise an error when an instance or subclass of Serializer::Mechanism is not passed as an argument' do
      expect { described_class.new( Object.new ) }.to raise_error(Serializer::InvalidMechanismError)
      expect { described_class.new( valid_mechanism ) }.not_to raise_error
    end
    
  end
  
  describe '#dump' do
    
    it 'should not be implemented' do
      expect { described_class.new( valid_mechanism ).dump(:thing) }.to raise_error(NotImplementedError)
    end
    
  end
  
  describe '#load' do
    
    it 'should not be implemented' do
      expect { described_class.new( valid_mechanism ).load(:thing) }.to raise_error(NotImplementedError)
    end
    
  end
  
end
