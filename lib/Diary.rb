class Diary 
    def initialize
        @entries = []
    end

    def add_record(entry)
        fail 'An argument must be passed in to add an entry' unless !entry.nil?
        @entries << entry.return
    end

    def all_records
        return @entries
    end

    def specific_record(wpm,time)
        fail "Please input the time you have available!" unless !time.nil?
        fail "Please input the number of words you can read in a minute!" unless !wpm.nil?
            words_read = wpm * time 
            closest = wpm * time
            diary_length = @entries.join(" ").split(" ").length
            best_entry = ''

            @entries.each do |x| 
                text = x.split(" ")
            next if text.length > words_read 

            best_entry = x if text.length == words_read 

            
            if text.length < words_read && words_read - text.length < closest
                closest = words_read - text.length 
                best_entry = x 
            end
        return best_entry
    end
end
end