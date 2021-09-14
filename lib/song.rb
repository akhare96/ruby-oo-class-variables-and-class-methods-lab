
class Song

    @@artists = []
    @@count = 0
    @@genres = []
    @@artist_count = {}
    @@genre_count = {}

    attr_accessor :name, :artist, :genre


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre

    end

    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artist_count
        @@artists.each {|artist|
        if @@artist_count[artist]
            @@artist_count[artist] += 1
        else
            @@artist_count[artist] = 1
        end
        }
        @@artist_count
    end

    def self.genre_count
        @@genres.each {|genre|
        if @@genre_count[genre]
            @@genre_count[genre] += 1
        else
            @@genre_count[genre] = 1
        end
        }
        @@genre_count
    end
end
