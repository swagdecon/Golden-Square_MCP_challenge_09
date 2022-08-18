class Contacts
    def parse(text)
        numbers = text.return.split(" ")
        .filter {|el| el.length == 11}.map {|el| el.to_i}
        numbers.delete(0)
        str_array = numbers.map(&:to_s)
        return str_array
    end
end
