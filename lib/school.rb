# code here!
class School 
    attr_reader :name
    attr_accessor :roster

    def initialize(name)
        @roster = {}
        @name = name    
    end
    def add_student(student, grade)
        @roster[grade] = []
        @roster.each do |key, value|
            puts @roster[key]
            if @roster[key] == grade
        @roster[key] << student
            end
        @roster[grade] = [student]
        end    
    end
    def self.grade(grade)
        @roster[grade]
    end
    def self.sort
        @roster[grade].sort 
        puts @roster[grade]
    end

end
