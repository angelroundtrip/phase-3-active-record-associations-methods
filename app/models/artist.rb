class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.genres.first
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.count
  end

  def genre_count
    #return the number of genres associated with the artist
    self.genres.count
  end
end


#! NOTE/Example:
  # the #get_first_song method so that it returns the first song saved to the artist it's called on
  # we now want to call #songs on the instance that the method will be called on in the future.
  # has_many :songs creates an instance method #songs that we can call on any instance of an artist
  # has_many :songs creates an instance method #songs that we can call on any instance of an artist
  # Calling this method now will return an array of the artist's songs
  #! def get_first_song
  #!   self.songs
  #! end
  # self.songs.first --- will return the FIRST song