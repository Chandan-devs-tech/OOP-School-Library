require_relative 'spec_helper'

describe Teacher do
    before :each do
        @teacher = Teacher.new('300-600700', 45, 'Maths', 'Jack')
    end

    describe '#new teacher' do
        it 'return instance of Teacher class' do
            expect(@teacher).to be_an_instance_of(Teacher)
        end
    end

    describe '#id' do
        it 'return id of the teacher' do
            expect(@teacher.id).to eql('300-600700')
        end
    end 

    describe '#age' do
        it 'return the age of the teacher' do
            expect(@teacher.age).to eql(45)
        end 
    end

    describe '#specialization' do
        it 'return the specialization of the teacher' do
            expect(@teacher.specialization).to be_truthy
        end
    end

    describe '#name' do
        it 'return the name of the teacher' do
            expect(@teacher.name).to eql('Jack')
        end
    end
end