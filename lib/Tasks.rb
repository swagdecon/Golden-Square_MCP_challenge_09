class Tasks  
    def initialize
        @tasksArr = []
    end

    def add(task)
        fail 'An argument must be passed in to add an task' unless !task.nil?
            @tasksArr << task     
    end

    def all    
        @tasksArr
    end

    def complete(task) 
    fail "Task does not exist" unless @tasksArr.include?(task)
        @tasksArr.delete(task)
    end
end 