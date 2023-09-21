require_relative 'person'

class Student < Person
  attr_accessor :parent_permission

  def initialize(age, _parent_permission, name = 'Unknown')
    super(age, name)
    @parent_permission = parent_permission
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def to_json(options = {})
    super(options)
  end
end
