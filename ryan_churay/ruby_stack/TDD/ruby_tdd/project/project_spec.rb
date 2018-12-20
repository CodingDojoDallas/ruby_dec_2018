require_relative 'project'
RSpec.describe Project do
  before(:each) do
    # updated this block to create two projects
    @project1 = Project.new('Project 1', 'description 1', 'owner 1')
    @project2 = Project.new('Project 2', 'description 2', 'owner 2')
  end

  it 'has a getter and setter for name attribute' do
    @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
    expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end

  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project name: Project 1, Description: description 1")
    expect(@project2.elevator_pitch).to eq("Project name: Project 2, Description: description 2")
  end

  it 'has a getter and setter method for owner attribute' do
    @project1.owner = "Changed Owner"
    expect(@project1.owner).to eq("Changed Owner")
  end

  it 'add a task' do
    expect(@project1.add_tasks("new task")).to eq(["new task"])
  end

  # context 'add a task' do
  #   it 'add task' do
  #     @project1.add_tasks("new task")
  #     expect(@project1.tasks).to

end
