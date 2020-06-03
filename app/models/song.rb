class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes 

  def artist_name 
    self.artist ? self.artist.name : nil
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def genre_id 
    self.genre ? delf.genre.name : nil
  end 

  def genre_id=(name) 
    self.genre = Genre.find_or_create_by(name: name)
  end

  # def note_contents=(notes_arr)
  #   #binding.pry
  #   notes_arr.each do |note|
  #     self.notes.build(content: note) unless note.empty?
  #   end
  # end

  # def note_contents 
  #   self.notes
  # end
  accepts_nested_attributes_for :notes

end