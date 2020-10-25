require 'pry'

class Song

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

=begin
  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end
=end

  def self.all
    @@songs
  end

=begin
  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end
=end

  def artist=(artist)
    @artist = artist
  end

=begin
  def to_param
    name.downcase.gsub(' ', '-')
  end
=end

end
