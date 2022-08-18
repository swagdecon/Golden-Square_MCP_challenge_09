require 'Music_Library'
require 'Track'

RSpec.describe MusicLibrary do
    context "#add" do
    it "adds a track to a playlist" do
        library = MusicLibrary.new
        track1 = Track.new('No Censor', 'Zone 2')
        track2 = Track.new('Suburban Pt.2','22Gz')
        library.add(track1)
        library.add(track2)
        expect(library.all).to eq [track1, track2]
        end
    end
end