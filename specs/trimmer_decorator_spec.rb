require_relative 'spec_helper'

describe TrimmerDecorator do
  before :each do
    @person = Person.new('100-230600', 25, 'Maximiliusness')
    @capitalize_decorator = CapitalizeDecorator.new(@person)
    @trimmer_decorator = TrimmerDecorator.new(@capitalize_decorator)
  end

  describe '#new trimmer_decorator' do
    it 'return the instance of TrimmerDecorator class' do
      expect(@trimmer_decorator).to be_an_instance_of(TrimmerDecorator)
    end
  end

  describe '#correct_name' do
    it 'it trim a name to 10 character' do
      expect(@trimmer_decorator.correct_name).to eql('Maximilius')
    end
  end
end
