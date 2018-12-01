class Project
    # your code here
    attr_accessor :name, :desc
    def initialize(name, desc)
        @name = name
        @project_desc = desc
    end 
    def elevator_pitch
        #you defined name in the attr_accessor but did not define project_desc which is why you need the symbol @
        #you did this because you needed a setter/getter method to call this object in line 15
        puts "I am #{name} #{@project_desc}"
    end
end
project1 = Project.new("Project 1", "Description 1")
puts project1.name # => "Project 1"
project1.elevator_pitch  # => "Project 1, Description 1"
