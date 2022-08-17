require 'Tasks'

RSpec.describe Tasks do
    it "returns a task" do
        task = Tasks.new
        expect(task.add('Example Task')).to eq 'Example Task'
    end
end
