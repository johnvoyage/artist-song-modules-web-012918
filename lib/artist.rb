require 'pry'

class Artist

  extend Memorable

  attr_accessor :name
  attr_reader :songs

  ALL = []

  def self.find_by_name(name)
    ALL.detect{|a| a.name == name}
  end

  def initialize
    ALL << self
    @songs = []
  end

  def self.all
    ALL
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   ALL.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
