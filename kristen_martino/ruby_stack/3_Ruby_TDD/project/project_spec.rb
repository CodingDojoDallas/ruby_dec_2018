require 'rspec'
require_relative 'project'

describe Project do
  before(:each) do
    @project1 = Project.new('Project 1', 'description 1', 'owner 1')
    @project2 = Project.new('Project 2', 'description 2', 'owner 2')
    @project3 = Project.new('Project 3', 'description 3', 'owner 3', ['task 1', 'task 2'])
  end

  it 'has a getter and setter for name attribute' do
    @project1.name = "Changed Name"
    expect(@project1.name).to eq("Changed Name")
  end

  it 'has a getter and setter for owner attribute' do
    @project3.owner = "owner 3"
    expect(@project3.owner).to eq("owner 3")
  end

  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1, owner 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2, owner 2")
  end

  it 'has a method tasks that returns the tasks for the project' do
    expect(@project3.tasks).to eq(['task 1', 'task 2'])
    expect(@project1.tasks).to eq([])
    end

  it 'has a method add_tasks that pushes a single task to the tasks attribute' do
    expect(@project3.add_tasks('task 3')).to eq(['task 1', 'task 2', 'task 3'])
    expect(@project1.add_tasks('task 1')).to eq(['task 1'])
  end

end