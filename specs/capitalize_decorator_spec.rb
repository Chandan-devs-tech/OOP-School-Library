require_relative 'spec_helper'

describe CapitalizeDecorator do
  before :each do
    @person = Person.new('100-230600', 25, 'tom')
    @capitalize_decorator = CapitalizeDecorator.new(@person)
  end

  describe '#new capitalize_decorator' do
    it 'return instance of CapitalizeDecorator class' do
      expect(@capitalize_decorator).to be_an_instance_of(CapitalizeDecorator)
    end
  end

  describe '#correct_name' do
    it 'return the capitalize name' do
      expect(@capitalize_decorator.correct_name).to eql('Tom')
    end
  end
end
