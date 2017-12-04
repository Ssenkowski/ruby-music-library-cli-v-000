module Concerns::Persistable

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    self.class.all << self
  end

  def self.create(genre)
    genre = self.new(genre)
    @@all << genre
    genre
  end
  
end