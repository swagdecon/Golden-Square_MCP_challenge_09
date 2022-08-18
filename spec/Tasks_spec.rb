require 'Tasks'

RSpec.describe Tasks do
    context "#add" do
    it "adds a task to a list" do
        task = Tasks.new
        task.add('Example Task')
        expect(task.all).to eq ['Example Task']
    end
end
    context '#all' do
    it 'returns all the tasks (except those marked as completed)' do
        task = Tasks.new
        task1 = task.add('Example Task 1')
        task2 = task.add('Example Task 2')
        task3 = task.add('Example Task 3')
        task4 = task.add('Example Task 4')
        expect(task.all).to eq ['Example Task 1', 'Example Task 2','Example Task 3', 'Example Task 4']
    end
end
    context "#complete" do
    it "takes a task and removes it from the list" do
        task = Tasks.new
        task1 = task.add('Example Task 1')
        task2 = task.add('Example Task 2')
        task3 = task.add('Example Task 3')
        task4 = task.add('Example Task 4')
        task.complete('Example Task 4')
        expect(task.all).to eq ['Example Task 1', 'Example Task 2','Example Task 3', ]
        end
    end
end
