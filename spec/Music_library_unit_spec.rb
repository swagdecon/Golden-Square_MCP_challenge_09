require 'Music_Library'

RSpec.describe MusicLibrary do 
    it 'Initializes' do
        library = MusicLibrary.new
        expect(library.all).to eq []
    end
end

    context "#add" do
    it "adds a track to the library" do
        library = MusicLibrary.new
        track1 = double :track
        track2 = double :track
        library.add(track1)
        library.add(track2)
        expect(library.all).to eq [track1, track2]
    end

    context "#search" do
    it "searches track by title or artist" do
        library = MusicLibrary.new
        track_1 = double :track
        expect(track_1).to receive(:matches?).with('two').and_return(true)
        track_2 = double :track
        expect(track_2).to receive(:matches?).with('two').and_return(false)

        library.add(track_1)
        library.add(track_2)
        expect(library.search('two')).to eq [track_1]
    end
end

end