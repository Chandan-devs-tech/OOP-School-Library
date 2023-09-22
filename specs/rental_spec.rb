require_relative 'spec_helper'

describe Rental do
    before :each do
        @book = Book.new('Title', 'Author')
        @person = Person.new('100-230600', 25, 'Tom')
        @rental = Rental.new('2023/10/23', @book, @person)
    end

    describe '#new rental' do
        it 'return the instance of Rental class' do
            expect(@rental).to be_an_instance_of(Rental)
        end
    end

    describe '#date' do
        it 'return the date of the rental' do
            expect(@rental).to be_an_instance_of(Rental)
        end
    end

    describe '#book' do
        it 'return the book of the rental' do
            expect(@rental.book).to eql(@book)
        end
    end

    describe '#person' do
        it 'return the person of the rental' do
            expect(@rental.person).to eql(@person)
        end
    end
end