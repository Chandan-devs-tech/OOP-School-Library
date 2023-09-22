require_relative 'spec_helper'

describe Person do
    before :each do
        @person = Person.new('100-230600', 25, 'Tom')
    end

    describe '#new person' do
        it 'return instance of the Person class' do
            expect(@person).to be_an_instance_of(Person)
        end
    end

    describe '#id' do
        it 'return the id of the person' do
            expect(@person.id).to eql('100-230600')
        end
    end

    describe '#age' do
        it 'return the age of the person' do
            expect(@person.age).to eql(25)
        end
    end

    describe '#name' do
        it 'return the name of the person' do
            expect(@person.name).to eql('Tom')
        end
    end

    describe '#parent_permission' do
        it 'return true for the parenr permisssion' do
            expect(@person.instance_variable_get(:@parent_permission)).to be_truthy
        end
    end
end