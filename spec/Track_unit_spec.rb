require 'Track'

RSpec.describe Track do 
    it "initializes" do
        track1 = Track.new('Zone 2', 'No Censor')
        expect(track1.class).to eq Track
    end
    context "#matches" do
    it "Returns a boolean depending on whether the keyword matches the title or artist" do
        track_1 = Track.new('Zone 2', 'No Censor')
        track_2 = Track.new('22Gz', 'Suburban Pt.2')
        expect(track_1.matches?('Zone')).to eq true
        end
    end

    context "#matches" do
    it "Returns a boolean depending on whether the keyword matches the title or artist" do
        track_1 = Track.new('Zone 2', 'No Censor MATCHES')
        track_2 = Track.new('22Gz', 'Suburban Pt.2')
        expect(track_1.matches?('MATCHES')).to eq true
        end
    end
    context "#matches" do
    it "Returns a boolean depending on whether the keyword matches the title or artist" do
        track_1 = Track.new('Zone 2', 'No Censor MATCHES')
        track_2 = Track.new('22Gz', 'Suburban Pt.2')
        expect(track_2.matches?('MATCHES')).to eq false
        end
    end

    context "#matches" do
    it "Returns a boolean depending on whether the keyword matches the title or artist" do
        track_1 = Track.new('Zone 2', 'No Censor')
        track_2 = Track.new('22Gz', 'Suburban Pt.2')
        expect(track_1.matches?('None')).to eq false
        end
    end
end
