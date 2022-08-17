require "Diary"
    RSpec.describe "#diary" do
    context "no args are given to #add_record" do
        it "throws error" do
        diary = Diary.new
        expect{ diary.add_record(entry=nil) }.to raise_error 'An argument must be passed in to add an entry'
        end
    end 
end