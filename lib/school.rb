class School
 attr_reader :name
 attr_accessor :

def initialize(name)
  @name = name
end

def roster=(roster)
 @roster = {}
end

def roster
  @roster
end

end
