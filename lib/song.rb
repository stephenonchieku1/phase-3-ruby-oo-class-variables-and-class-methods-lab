class Song
    attr_accessor :artists, :genre, :name

     @@count=0
     @@genre_count=0
     @@artist_count=0
     @@artists=[]
     @@genre=[]
    def initialize(genre,artist,name)
    @name=name
    @artist=artist
    @genre=genre
    @@artists<<artist
    @@genres<< genre
    @@count=+1

    end
    def self.count
        @@count
    end
    def genres
        @@genres.uniq
    end
    def self.genre_count
        @@genres.tally
    end
    def self.artists_count
        @@artists.tally
    end
end