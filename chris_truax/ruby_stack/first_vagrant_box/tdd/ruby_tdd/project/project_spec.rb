require_relative 'project'
    before(:each) do
        @project1 = Project.new('Project 1', 'description 1','owner1')
        @project2 = Project.new('Project 2', 'description 2','owner2')
    end
    it 'has a getter and setter for name attribute' do
        @project1.name = "Changed Name"
        expect(@project1.name).to eq("Changed Name")
    end 
    it 'has a getter and setter for owner attribute' do
        @project1.owner = "Changed Owner"
        expect(@project1.owner).to eq("Changed Owner")
    end 
    it 'has a method elevator_pitch to explain name and description' do
        expect(@project1.elevator_pitch).to eq("Project 1, description 1")
        expect(@project2.elevator_pitch).to eq("Project 2, description 2")
    end
    it 'has a method tasks to return tasks array' do
        expect(@project1.tasks).to eq([])
        expect(@project2.tasks).to eq([])
    end
    it 'has a method add_tasks to add a task to our tasks array' do
        expect(@project1.add_tasks("task1")).to eq(["task1"])
        expect(@project2.add_tasks("task2")).to eq(["task2"])
    end
end