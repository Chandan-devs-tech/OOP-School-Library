require_relative 'spec_helper'

describe Student do
  before :each do
    @student = Student.new('200-400500', 22, true, 'Mel')
  end

  describe '#new student' do
    it 'return the instance of the Student class' do
      expect(@student).to be_an_instance_of(Student)
    end
  end

  describe '@id' do
    it 'return the id of the student' do
      expect(@student.id).to eql('200-400500')
    end
  end

  describe '@age' do
    it 'return the age of the student' do
      expect(@student.age).to eql(22)
    end
  end

  describe '@parent_permission' do
    it 'return the parent permission of the student' do
      expect(@student.parent_permission).to be_truthy
    end
  end

  describe '@name' do
    it 'return the name of the student' do
      expect(@student.name).to eql('Mel')
    end
  end
end
