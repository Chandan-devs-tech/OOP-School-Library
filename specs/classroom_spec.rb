require_relative 'spec_helper'

describe Classroom do
    before :each do
        @classroom = Classroom.new('C5-Mathematics')
    end

    describe '#new classroom' do
        it 'return the instance of the Classroom class' do
            expect(@classroom).to be_an_instance_of(Classroom)
        end 
    end

    describe '#label' do
        it 'return the label of the classroom' do
            expect(@classroom.label).to eql('C5-Mathematics')
        end
    end

    describe '#students' do
        it 'return the student of the classroom' do
            expect(@classroom.student).to eql []
        end
    end
end