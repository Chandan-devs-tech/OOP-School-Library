require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
    classroom.student.push(self) unless classroom.student.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

# student = Student.new(22,"B","sana")
# puts student.name
# puts student.id
# puts student.age
# puts student.can_use_services?
# puts student.classroom
# puts student.play_hooky
