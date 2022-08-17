class Diary 
    def initialize
        @entries = []
        @tasksArr = []
    end

    def add_record(entry)
        fail 'An argument must be passed in to add an entry' unless entry != nil
        @entries << entry.return
    end

    def all_records
        return @entries
    end

    def specific_record(wpm,time)
        fail "Please input the time you have available!" unless time != nil
        fail "Please input the number of words you can read in a minute!" unless wpm != nil
            total_words_read = wpm * time 
            closest = wpm * time
            diary_length = @entries.join(" ").split(" ").length
            best_entry = ''
            @entries.each do |x| 
        next if x.split(" ").length > total_words_read 

        if x.split(" ").length  == total_words_read 
            best_entry = x
        end

        if x.split(" ").length < total_words_read && total_words_read - 
        x.split(" ").length    < closest
        closest = total_words_read - x.split(" ").length 
        best_entry = x
        end
    end
        return best_entry
    end

    def add(task)
        fail 'An argument must be passed in to add an task' unless task != nil
        @tasksArr << task.all
    end

    def all_tasks
    @taskArr
    end
end