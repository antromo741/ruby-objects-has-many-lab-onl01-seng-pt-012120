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
        song.artist = self                              # sets song to artist
      #  @@song_count +=1

    end
    
    def add_song(song)
        
        song.artist = self
       # @@song_count +=1
    end

    def self.all
        @@all                                       #array of all the artists 
    end

    def songs
        #@songs = []
      Song.all.select {|song| song.artist == self}       #selects all the songs for an artist and assigns them to the artist
    end

    def self.song_count
        Song.all.count                                   #lets you call on all the songs from an artist
    end
end