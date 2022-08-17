require 'entry'

RSpec.describe Entry do
    it "returns entry" do
        entry = Entry.new('Example Entry') 
        expect(entry.return).to eq 'Example Entry'
    end
end
