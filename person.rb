require 'securerandom'

class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end

# person1 = Person.new(32,"rob")
# puts person1.name
# puts person1.id
# puts person1.age
# puts person1.can_use_services?
