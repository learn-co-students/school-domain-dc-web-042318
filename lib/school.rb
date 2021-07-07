# code here!
require 'pry'

class School 

    attr_accessor :roster, :name
#binding.pry 
    def initialize(name)
        @roster = {} #Hash.new(Array.new)
        @name = name 
    end
    
    def add_student(student, grade)
        @roster[grade] ||= []
        @roster[grade] << student
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end
kasia = School.new("JHU")
kasia.add_student("kasia", 2)
kasia.add_student("bob", 7)
kasia.add_student("foo", 2)

puts "done"