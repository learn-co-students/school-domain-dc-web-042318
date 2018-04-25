# code here!
class School 
    attr_accessor :name
    attr_reader :roster


    def initialize (name)
        @roster = {}
        @name = name
    end

    def add_student(name, grade)
        if roster.has_key?(grade)
            roster[grade] << name
        else
            roster[grade] = [name]
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort 
        roster.collect do |grade, list| 
            list.sort!
        end
        roster
    end
end