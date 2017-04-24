require_relative '../lib/concerns/memorable'

class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []

  include Memorable::InstanceMethods
  extend Memorable::ClassMethods

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    self.songs.push(song) unless songs.include?(song)
    song.artist ||= self
  end
end


  #def self.destroy_all
  #  self.all.clear
  #end

  #def save
  #  @@all.push(self)
  #end

  #def self.create(name)
  #  artist = Artist.new(name)
  #  artist.save
  #  artist
  #end
