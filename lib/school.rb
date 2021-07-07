require 'pry'

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if roster[grade]
      roster[grade].push(name)
    else
      roster[grade] = [name]
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each_value {|v| v.sort!}
  end
end
