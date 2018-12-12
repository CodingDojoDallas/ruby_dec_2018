require_relative 'project' # include our Project class in our spec file
RSpec.describe Project do
  before(:each) do
    @project1 = Project.new('Project 1', 'description 1', "John Doe") # create a new project and make sure we can set the name attribute
    @project2 = Project.new('Project 2', 'description 2', "Jane Smith")
  end

  it 'has a getter and setter for name attribute' do
    @project1.owner = "Jon Snow"
    # this line would fail if our class did not have a setter method
    expect(@project1.owner).to eq("Jon Snow")
    # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end

  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2")
  end

  it "should be a method task to return when initialize" do
    expect(@project1.task).to eq([])
  end

  it "has to add_tasks method and store it" do
    task = "Take out the trash"
    expect(@project1.add_tasks(task)).to eq(["Take out the trash"])
  end

end
