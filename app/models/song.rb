class Song < ActiveRecord::Base
  belongs_to :artists
  belongs_to :genres
  has_many :notes

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

  def genre_name
    self.genre ? self.genre.name : nil
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def genre_name
    self.artist ? self.artist.name : nil
  end
end
