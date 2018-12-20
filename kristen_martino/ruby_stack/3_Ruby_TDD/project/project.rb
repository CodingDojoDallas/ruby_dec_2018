class Project
  attr_accessor :name, :description, :owner, :tasks

  def initialize(name, description, owner, tasks = [])
    @name        = name
    @description = description
    @owner       = owner
    @tasks       = tasks
  end

  def tasks
    @tasks
  end

  def add_tasks(task)
    @tasks.push(task)
  end

  def elevator_pitch
    "#{@name}, #{@description}, #{@owner}"
  end
end