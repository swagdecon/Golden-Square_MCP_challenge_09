require 'entry'

RSpec.describe Entry do
    it "returns a single entry" do
        entry1 = Entry.new('Example Entry') 
        expect(entry1.return).to eq 'Example Entry'
    end
end
    context Entry do
        it "returns multiple entries" do
        entry1 = Entry.new('Example Entry') 
        entry2 = Entry.new('Example Entry 2') 
        expect(entry1.return).to eq 'Example Entry'
        expect(entry2.return).to eq 'Example Entry 2'
    end
end
