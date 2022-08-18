# File: lib/music_library.rb

class MusicLibrary
    def initialize
      @playlist = []
    end
  
    def add(track) 
        @playlist << track
    end
  
    def all
      @playlist
    end
    
    def search(keyword) 
        @playlist.select do |track| 
            track.matches?(keyword)
        end
    end
  end