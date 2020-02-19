class Artist
    attr_accessor :name 
   
    @@song_count = 0
    @@all = []

    def initialize(name)
      @name = name                                      #makes name and adds it to all array containing all artists 
      @@all << self
    end

    def add_song_by_name(name)
        song = Song.new(name)                           #takes in song name, adds to the song array, 
                                                        # sets song to artist
        song.artist = self
      #  @@song_count +=1

    end
    
    def add_song(song)
        
        song.artist = self
       # @@song_count +=1
    end

    def self.all
        @@all
    end

    def songs
        #@songs = []
      Song.all.select {|song| song.artist == self}
    end

    def self.song_count
        @@song_count
    end
end