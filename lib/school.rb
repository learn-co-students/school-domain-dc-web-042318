require 'pry'

class School

 attr_reader :name,:roster


def initialize(name)
  @name = name
  @roster = {}
end

def add_student(student_name, grade)
  roster[grade] ||= []
  roster[grade] << student_name
end

def grade(student_grade)
  roster[student_grade]
end

def sort
  group = {}
  roster.each {|grade, students| group[grade] = students.sort}
    group
end

end
