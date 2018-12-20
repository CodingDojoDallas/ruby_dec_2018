class Project
  attr_accessor :name, :desc, :owner
  def initialize(name, desc, owner)
    @name = name
    @desc = desc
    @owner = owner
    @tasks = []
  end
  def elevator_pitch
    "Project name: #{@name}, Description: #{@desc}"
  end
  def tasks
    @tasks
  end
  def add_tasks task
    @tasks.push(task)
  end
  def print_tasks
    @tasks.each{|i| puts i}
  end
end
# project1 = Project.new("Project 1", "Description 1")
# puts project1.name # => "Project 1"
# project1.elevator_pitch  # => "Project 1, Description 1"
