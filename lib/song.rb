class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count = @@count + 1
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        res = {}
        @@genres.each do |g| 
            res[g] = res[g] ? res[g] + 1 : 1
        end
        res
    end

    def self.artist_count
        res = {}
        @@artists.each do |a| 
            res[a] = res[a] ? res[a] + 1 : 1
        end
        res
    end
end