class Project
  attr_accessor :name, :description, :owner, :task
  def initialize name, description, owner
    @name = name
    @description = description
    @owner = owner
    @task = []
  end

  def task
    @task
  end

  def add_tasks task
    @task.push(task)
  end

  def elevator_pitch
    "#{@name}, #{@description}"
  end
end
