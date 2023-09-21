require 'securerandom'
require_relative 'nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name = name
  end

  def add_rentals(date, book)
    @rentals.push(Rental.new(date, self, book)) unless @rentals.include?(Rental.new(date, self, book))
  end

  def to_json(options = {})
    {
      id: @id,
      name: @name,
      age: @age,
      parent_permission: @parent_permission,
      rentals: @rentals
    }.to_json(options)
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
