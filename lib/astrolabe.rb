require 'astrolabe/version'

module Astrolabe
  autoload :Degrees,  'astrolabe/degrees'
  autoload :Position, 'astrolabe/position'
  autoload :WesternTropical, 'astrolabe/western_tropical'

  #class << self
  #  delegate_method Astrolabe::WesternTropical::SIGNS.keys, to: Astrolabe::WesternTropical
  #end

  def self.degrees(degrees, minutes, seconds)
    Astrolabe::Degrees.new(degrees, minutes, seconds)
  end

  def self.sign_helper(sign, num)
    self.class.define_method sign do |degrees = 0, minutes = 0, seconds = 0|
      offset = (num - 1) * 30
      degrees(offset + degrees, minutes, seconds).normalized
    end
  end

  sign_helper :aries,       1
  sign_helper :taurus,      2
  sign_helper :gemini,      3
  sign_helper :cancer,      4
  sign_helper :leo,         5
  sign_helper :virgo,       6
  sign_helper :libra,       7
  sign_helper :scorpio,     8
  sign_helper :sagittarius, 9
  sign_helper :capricorn,   10
  sign_helper :aquarius,    11
  sign_helper :pisces,      12
end
